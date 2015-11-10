/* this is the linux 2.2.x way of handling joysticks. It allows an arbitrary
 * number of axis and buttons. It's event driven, and has full signed int
 * ranges of the axis (-32768 to 32767). It also lets you pull the joysticks
 * name. The only place this works of that I know of is in the linux 1.x 
 * joystick driver, which is included in the linux 2.2.x kernels
 */

#include <stdio.h>
#include <sys/types.h> 
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <linux/joystick.h>

#define JOY_DEV "/dev/input/js0"

//=============================================================

void error( char *msg ) {
  perror(  msg );
  exit(1);
}

int func( int a ) {
   return 2 * a;
}

void sendData( int sockfd, int *x, int *y ) {
  int n, i;

  char buffer[256];
  sprintf( buffer, "%10d\t%10d\t%10d\t%10d\t", x[0], x[1], x[2], x[3] );
  for(i =0; i < 16; i++) {
	  sprintf(buffer[44 + (i * 11)], "%10d\t", y[i]);
  }
  if ( (n = write( sockfd, buffer, strlen(buffer) ) ) < 0 )
    error( const_cast<char *>( "ERROR writing to socket") );
  buffer[n] = '\0';
}

int getData( int sockfd ) {
  char buffer[32];
  int n;

  if ( (n = read(sockfd,buffer, 4) ) < 0 )
    error( const_cast<char *>( "ERROR reading from socket") );
  buffer[n] = '\0';
  return atoi( buffer );
}

int main() {
	int joy_fd, *axis=NULL, num_of_axis=0, num_of_buttons=0, x, data;
	char *button=NULL, name_of_joystick[80];
	struct js_event js;
	int sockfd, newsockfd, portno = 51717, clilen;
	struct sockaddr_in serv_addr, cli_addr;

	printf("Joystick C/S Controller. Version: TWa20150106\n");
	while( ( joy_fd = open( JOY_DEV , O_RDONLY)) == -1 )
	{
		if(sleep(2) != 0)
			break;
	}
	if(joy_fd == -1) {
		printf( "Couldn't open joystick\n" );
		return -1;
	}
	ioctl( joy_fd, JSIOCGAXES, &num_of_axis );
	ioctl( joy_fd, JSIOCGBUTTONS, &num_of_buttons );
	ioctl( joy_fd, JSIOCGNAME(80), &name_of_joystick );

	axis = (int *) calloc( num_of_axis, sizeof( int ) );
	button = (char *) calloc( num_of_buttons, sizeof( char ) );

	printf("Joystick detected: %s\n\t%d axis\n\t%d buttons\n\n"
	, name_of_joystick
	, num_of_axis
	, num_of_buttons );

	fcntl( joy_fd, F_SETFL, O_NONBLOCK );	/* use non-blocking mode */

	printf( "using port #%d\n", portno );

	sockfd = socket(AF_INET, SOCK_STREAM, 0);
	if (sockfd < 0) 
		error( const_cast<char *>("ERROR opening socket") );
	bzero((char *) &serv_addr, sizeof(serv_addr));

	serv_addr.sin_family = AF_INET;
	serv_addr.sin_addr.s_addr = INADDR_ANY;
	serv_addr.sin_port = htons( portno );
	if (bind(sockfd, (struct sockaddr *) &serv_addr, sizeof(serv_addr)) < 0) 
	error( const_cast<char *>( "ERROR on binding" ) );
	listen(sockfd,5);
	clilen = sizeof(cli_addr);

	while(1)
	{
		printf( "waiting for new client...\n" );
		if ( ( newsockfd = accept( sockfd, (struct sockaddr *) &cli_addr, (socklen_t*) &clilen) ) < 0 )
		 error( const_cast<char *>("ERROR on accept") );
		printf( "opened new communication with client\n" );

		while( 1 ) 	/* infinite loop */
		{
			data = getData( newsockfd );
//			printf( "got %d\n", data );
			if ( data < 0 ) 
				break;
			if ( data == 'M' ) {
				sendData(newsockfd, axis, button);
			}
				/* read the joystick state */
			read(joy_fd, &js, sizeof(struct js_event));
			
				/* see what to do with the event */
			switch (js.type & ~JS_EVENT_INIT)
			{
				case JS_EVENT_AXIS:
					axis   [ js.number ] = js.value;
					break;
				case JS_EVENT_BUTTON:
					button [ js.number ] = js.value;
					break;
			}
			/* print the results */
/*************************************************************************
			
			printf( "X: %6d  Y: %6d  ", axis[0], axis[1] );
			
			if( num_of_axis > 2 )
				printf("Z: %6d  ", axis[2] );
				
			if( num_of_axis > 3 )
				printf("R: %6d  ", axis[3] );
				
			for( x=0 ; x<num_of_buttons ; ++x )
				printf("B%d: %d  ", x, button[x] );

			printf("  \r");
			fflush(stdout);
**************************************************************************/
		}

		close(newsockfd);
	}
	close( joy_fd );	/* too bad we never get here */
	return 0;
}

#ifndef GLOBAL_SUPPLEMENT_H_
#define GLOBAL_SUPPLEMENT_H_

#define CONFIG_BASE     0x10000
#define UNFILT1_BASE    0x20000
#define UNFILT2_BASE    0x30000
#define ORIG_BLOCK_BASE 0x40000
#define LAMBDA_BASE     0x50000
#define RESULT_BASE     0x60000

#define CONFIG_SIZE 0x1c
#define UNFILT_SIZE 0x48
#define ORIG_BLOCK_SIZE 0x1000
#define LAMBDA_SIZE 0x4
#define RESULT_SIZE 0x4

#define IOCTL_SET_LOCATION 0
#define IOCTL_LOCATION_UNFILT1 0
#define IOCTL_LOCATION_UNFILT2 1
#define IOCTL_LOCATION_ORIG_BLOCK 2
#define IOCTL_LOCATION_CONFIG 3
#define IOCTL_LOCATION_LAMBDA 4

#define O_RDWR 1

// kvazaar_main declaration defined in encmain.c
extern int kvazaar_main(int argc, char *argv[]);

// kvazaar is a class declared in sc_kvazaar.h
class kvazaar;

// declarations for ip_acc_driver and ip_acc_fd
extern kvazaar* ip_acc_driver;
extern int ip_acc_fd;

const int simulation_successful[] = 
{
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 44, 13, 10, 32, 
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 35, 35, 13, 10, 32, 
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 35, 32, 35, 35, 13, 10, 
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 35, 32, 32, 35, 35, 13, 
10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 35, 35, 35, 13, 
10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 58, 13, 10, 
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 35, 35, 35, 35, 
13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 35, 35, 35, 
35, 35, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 35, 
32, 32, 35, 35, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 
35, 35, 32, 32, 35, 35, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 
32, 32, 35, 35, 32, 32, 35, 35, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 
32, 32, 32, 32, 35, 35, 32, 32, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 35, 32, 32, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 
35, 35, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 35, 35, 35, 35, 35, 35, 
32, 32, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 
32, 32, 32, 32, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 
35, 35, 35, 35, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 46, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 
35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 13, 10, 32, 32, 32, 32, 32, 32, 
32, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 
35, 35, 35, 35, 35, 35, 35, 35, 35, 59, 13, 10, 32, 32, 32, 32, 32, 32, 32, 35, 35, 32, 32, 32, 32, 32, 32, 32, 32, 
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 35, 46, 13, 
10, 32, 32, 32, 32, 32, 32, 32, 35, 35, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 35, 13, 10, 32, 32, 32, 32, 32, 32, 32, 35, 35, 35, 35, 
35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 
35, 35, 35, 35, 13, 10, 32, 32, 32, 32, 32, 32, 32, 35, 35, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 35, 13, 10, 32, 32, 32, 32, 32, 32, 
32, 35, 35, 32, 32, 32, 32, 32, 32, 32, 32, 67, 79, 78, 71, 82, 65, 84, 85, 76, 65, 84, 73, 79, 78, 83, 44, 32, 32, 
32, 32, 32, 32, 32, 32, 32, 35, 35, 13, 10, 32, 32, 32, 32, 32, 32, 32, 35, 35, 32, 32, 32, 32, 32, 84, 72, 69, 32, 
67, 65, 75, 69, 32, 73, 83, 32, 78, 79, 84, 32, 65, 32, 76, 73, 69, 32, 32, 32, 32, 32, 32, 32, 35, 35, 35, 13, 10, 
32, 32, 32, 32, 35, 35, 35, 35, 35, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 35, 35, 35, 35, 13, 10, 32, 32, 32, 35, 35, 35, 32, 35, 35, 
35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 
35, 35, 35, 35, 35, 35, 32, 35, 35, 35, 13, 10, 32, 32, 35, 35, 35, 32, 32, 35, 35, 32, 32, 32, 32, 32, 32, 32, 32, 
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 35, 32, 32, 
35, 35, 35, 13, 10, 32, 32, 35, 35, 32, 32, 32, 35, 35, 32, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 
44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 32, 35, 35, 32, 32, 32, 35, 35, 13, 10, 32, 32, 
32, 35, 35, 32, 32, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 
35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 32, 32, 35, 35, 13, 10, 32, 32, 32, 32, 35, 35, 32, 32, 32, 32, 
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 
32, 32, 32, 32, 32, 32, 35, 35, 13, 10, 32, 32, 32, 32, 32, 35, 35, 35, 35, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 
32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 35, 35, 35, 13, 10, 
32, 32, 32, 32, 32, 32, 32, 35, 35, 35, 35, 35, 35, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 
32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 35, 35, 35, 35, 35, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 35, 
35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35
};

#define SIMULATION_SUCCESSFUL {for(int count = 0; count < 1305; count++){printf("%c",simulation_successful[count]);}}

#endif // GLOBAL_SUPPLEMENT_H_
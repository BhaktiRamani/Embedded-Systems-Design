#include<stdio.h>

int main()
{
    int size = 5;
    int array[size];
    int index = 0;
    int head_index = 0;
    char user_input;
    while(1)
    {
        printf("Enter command : ");
        scanf(" %c", &user_input);
        switch (user_input)
        {
        
            case 'E' :
                int array_element;
                printf("Enter array elements : ");
                scanf("%d", &array_element);
                if(index < size) 
                {
                    array[index] = array_element;
                    index = index + 1;
                    break;
                }
                if(index == size)
                {
                    printf("--BUFFER WAS FULL--\n");
                    printf("Dumping first element : %d\n", array[0]);
                    for(int i = 0; i<(index - 1); i++)
                    {
                        int temp = array[i + 1];
                        array[i] = temp;
                    }
                    index = index - 1;
                    array[index] = array_element;
                    index = index + 1; 
                    break;
                  
                }
                break;
     
            case 'F':
                printf("PRINTING THE FIFO  ");
                for(int i = head_index; i<(index); i++)
                {
                    printf(" %d", array[i]);
                }
                printf("\n");
                break;
    
            default :
                printf("INVALID INPUT\n");
                break;
    
        }
        printf("\n");
    }
            
   
}
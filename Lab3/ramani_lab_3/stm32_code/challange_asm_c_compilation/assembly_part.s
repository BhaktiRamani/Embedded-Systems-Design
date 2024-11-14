    .section .text             		// Code section
    .global calculate_mod_product   // Make function available to linker
    //.global global_variable;
    .type calculate_mod_product, %function
    
    // global.s (ARM assembly)
    .data
    .global global_var    //Make the variable global
global_var:
    .word 42             //Initialize it to 42

calculate_mod_product:
    mul r1, r1, r2                   // R1 = param2 * param3, result in R1

    // Step 2: Divide product by param1 to get the quotient
    udiv r2, r1, r0                  // R2 = (param3 * param2) / param1 (quotient)

    // Step 3: Calculate remainder
    mls r0, r2, r0, r1               // R0 = R1 - (R2 * R0), which gives (param3 * param2) % param1
   
    bx lr                       // Return from function, result is in R0

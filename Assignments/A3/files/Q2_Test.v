`timescale 1ns / 1ps
module Detector_TestBench;

    reg sequence_in;
    reg clock;
    reg reset;

    // Outputs
    wire detector_out;

    Detector D (
    .sequence_in(sequence_in), 
    .clock(clock), 
    .reset(reset), 
    .detector_out(detector_out)
    );
    
    initial begin
    clock = 0;
    forever #5 clock = ~clock;
    end 
    initial begin
    // Initialize Inputs
    sequence_in = 0;
    reset = 1;
    // Wait 100 ns for global reset to finish
    #30;
        reset = 0;
    #40;
    sequence_in = 1;
    #10;
    sequence_in = 0;
    #10;
    sequence_in = 1; 
    #20;
    sequence_in = 0; 
    #20;
    sequence_in = 1; 
    #20;
    sequence_in = 0;  

    end   
endmodule

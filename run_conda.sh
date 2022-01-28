#!/bin/bash

conda="/home/$USER/anaconda3/bin/activate"

source $conda
# conda activate aprbot

# Create a temporary file
TMPFILE=$(mktemp)

# Add stuff to the temporary file
{
    echo "source $conda"
    echo "conda activate aprbot"
    echo "rm -f $TMPFILE"
} >> $TMPFILE


# Start the new bash shell 
bash --rcfile $TMPFILE

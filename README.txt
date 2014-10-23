These are my matlab scripts and for the camera calibration assignment in CS 211A at UCI.

At a high level, we solved for the camera calibration matrix to allow us to calculate the the position of the camera in space with respect to the global coordinate system.

This allowed us take pictures of the coordinate system while probing an object (with a pencil attached to the camera), and "reconstruct" a 3D model of the object.

All the images and code I used for this assignment are in this folder. The main code is titled "main_xx", and there should be enough comments to be able to follow what is happening. If not, please contact me! I did this project before I became comfortable with object-oriented programming.
You can run all the main scripts by running "run_main.m"

I haven't checked, but you may have to change the directory so that the scripts can read the images.

Three scripts are not mine (fuf, cab, rq). I pulled them from the mathworks forums. One was used for file access, another to close images, and the last was an RQ decomposition script that uses matlab's QR decomposition functions.
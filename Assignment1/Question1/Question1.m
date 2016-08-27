I = imread('cameraman.tif');
thresh1 = multithresh(I,1);
thresh2 = multithresh(I,3);
thresh3 = multithresh(I,7);
seg_I1 = imquantize(I,thresh1);
seg_I2 = imquantize(I,thresh2);
seg_I3 = imquantize(I,thresh3);
figure(1); imshow(seg_I1,[])
figure(2); imshow(seg_I2,[])
figure(3); imshow(seg_I3,[])

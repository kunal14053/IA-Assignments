cpselect('reference6.jpg','cameraman.tif')
trans=cp2tform(input_points,base_points,'affine');
K=imread('reference.jpg');
J = imtransform(K,trans);
imshow(K,[]),figure(),imshow(J,[])

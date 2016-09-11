I=imread('cameraman.tif');	

H = fspecial('laplacian');
MotionBlur = imfilter(I,H,'replicate');
Out1=I-MotionBlur;

H = fspecial('average');
MotionBlur = imfilter(I,H,'replicate');
Out2=MotionBlur;

H = fspecial('average');
MotionBlur = imfilter(I,H,'replicate');
imshow(MotionBlur);
G=I-MotionBlur;
Out3=I+G;

imshow(Out2),figure,imshow(Out1),figure,imshow(Out3);
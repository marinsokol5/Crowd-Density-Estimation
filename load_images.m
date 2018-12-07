function [images] = load_images(folder, extension, number_prefix)
%folder - ime foldera, extension - ekstenzija slike, number_prefix-ime
%ispred broja slike. Poziv izgleda primjerice ovako: 
%images = load_images('images', ".jpg", "Screenshot_");
%Ucitava slike redom kojim pise u imenu, npr. Screenshot_1.jpg je prva
%slika.
    cd(folder);
    imagefiles = dir(strcat('*', extension));
    nfiles = length(imagefiles);
    imagenumbers = zeros(nfiles);
    for ii = 1:nfiles
        name = erase(imagefiles(ii).name, number_prefix);
        imagenumbers(ii) = str2double(erase(name, extension));
    end
    imagenumbers = sort(imagenumbers);
    images = {};
    for ii = 1:nfiles
        currentfilename = join([number_prefix, imagenumbers(ii,1), extension], '');
        currentimage = imread(char(currentfilename));
        images{ii} = currentimage;
    end
    cd('..');
end


images = load_images('images', ".jpg", "Screenshot_");
[labels, label_map] = create_label_map('labels.txt');
[glcm_dataset, fractal_dataset, tiocm_dataset] = prepare_datasets(images);
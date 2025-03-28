class ImageUploader < Shrine
  Attacher.validate do
    validate_mime_type %w[image/jpeg image/png image/webp]
    validate_max_size 1.megabyte, message: "is too large (max is 1 MB)"
  end
end

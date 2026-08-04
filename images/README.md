Image organization and optimization

- Place original high-resolution images and PDFs here.
- Suggested structure:
  - images/original/  # keep originals if you want
  - images/optimized/ # generated smaller files for the website
  - images/certs/     # certificate PDFs or thumbnails

Optimization (Windows with ImageMagick installed):

Run the `scripts/optimize-images.ps1` script to create `images/optimized/` copies resized to a maximum width and recompressed for web.

If you prefer npm tools, install `imagemin-cli` and run either a dedicated script or use `npx imagemin` to compress files.

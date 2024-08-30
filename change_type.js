const fs = require('fs');

function injectpng(filename, callback) {
  return new Promise((resolve, reject) => {
    fs.readFile(filename, (err, data) => {
      if (err) {
        return reject(err);
      }
      fs.readFile('base.png', (err, image_buffer) => {
        if (err) {
          return reject(err);
        }
        const new_file = filename.replace('.ts', '.png');
        const combinedBuffer = Buffer.concat([image_buffer, data]);
        fs.writeFile(new_file, Buffer.from(combinedBuffer), (err) => {
          if (err) {
            return reject(err);
          }
          fs.unlink(filename, (err) => {
            if (err) {
              return reject(err);
            }
            return resolve(new_file);
          });
        });
      });
    });
  });
}

injectpng('sample_640x360.ts', ()=>{});
// node change_type.js

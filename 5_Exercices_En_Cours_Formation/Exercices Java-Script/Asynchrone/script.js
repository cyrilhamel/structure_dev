/*async function fileUpload(fileSize) {
  let size = 10;
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      if (fileSize < size) {
        resolve("Success");
      } else {
        reject(new Error("fichier trop volumineux"));
      }
    }, 3000);
  });
}

async function result(fileSize){
  await fileUpload(fileSize).then(response => {
    console.log(response);
  })
  .catch((reject) => {
    console.log(reject);
  });
}
result(12);*/

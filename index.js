// This file is only for Vercel compatibility
// The actual application runs in the Docker container

console.log('Fider is running in a Docker container on Vercel');

module.exports = (req, res) => {
  res.status(200).send('Fider is running. Please access the application URL directly.');
};
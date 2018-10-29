var axios = require('axios');

// Add a request interceptor
axios.interceptors.request.use(function (config) {
	// Do something before request is sent
	return config;
}, function (error) {
	// Do something with request error
	return Promise.reject(error);
});

// Add a response interceptor
axios.interceptors.response.use(function (response) {
	// Do something with response data
	return response;
}, function (error) {
	// Do something with response error
	return Promise.reject(error);
});

axios.get('/user?ID=12345')
	.then(function (response) {
		console.log(response);
	})
	.catch(function (error) {
		console.log(error);
	});

// Optionally the request above could also be done as
axios.get('/user', {
	params: {
		ID: 12345
	}
})
	.then(function (response) {
		console.log(response);
	})
	.catch(function (error) {
		console.log(error);
	});




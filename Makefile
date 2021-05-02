build:
	pack build jordanyong/sample-product-service --builder gcr.io/buildpacks/builder:v1
publish:
	docker push jordanyong/sample-product-service
helm-update:
	helm dependency update charts
release:
	helm upgrade --install sample-product-service charts
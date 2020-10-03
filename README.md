# Python PIP distribution demo

This project demonstrates a simple approach to Python app distribution that includes required third-party modules. it addresses a use-case where the target environment has no access to python module repository i.e. an offline install. We do require that the pip tools is present.

## Development

Development of custom application code should be done using a virtual environment (virtualenv). When you are ready to create a distribution package use pip freeze to create a list of used modules in a requirements.txt file.

```
pip freeze > requirements.txt
```
## Packaging

From the root directory of your project, use pip to download and dependent modules to a local lib directory, We use the requirements.txt to determine the modules to download.

```
pip download -d lib -r requirements.txt
```

Zip the project folder, excluding your virtual environment directory

## Target Install and Setup

Unzip the distribution package and cd to the project folder. Use pip to install your project's module dependencies.

```
pip install --no-index --find-links ./lib -r requirements.txt
```
Your app sould be ready to run.



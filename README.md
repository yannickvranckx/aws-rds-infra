# Automic Database - AWS RDS

This repo holds the information and configuration for the RDS Configuratio for Automic Acceptance. 
The RDS was imported from existing configuration.

Check the "import.tf" for the import configuration

## Database Settings

- Engine: PostGreSQL
- Engine version as of import: 15.7
- Instance Class: db.r5.xlarge
- Port: 2999
- Storage Type: GP3
- IOPS: 12000

## Usage of import

```terraform
import {
  to = aws_db_instance.automic_acceptance
  id = "<name DB>"
}
```

## Making Changes

Publish all changes with a branch and a merge. The CI/CD will run on a merge request to save CI minutes. When successful, run the CI/CD from the branch and after merge the code.

## License

[MIT](https://choosealicense.com/licenses/mit/)
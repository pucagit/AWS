# 0. S3 CLI
- `aws s3`: A high-level way to interact with S3 buckets and objects
- `aws s3api`: A low-level way to interact with S3 buckets and objects
- `aws s3control`: Managing s3 access points, S3 outposts buckets, S3 batch operations, storage lens.
- `aws s3outposts`: Manage endpoints for S3 outposts

# 1. Create bucket

```
aws s3 mb s3://<bucket-name>
aws s3api create-bucket --bucket <bucket-name> --region <region-name> --create-bucket-configuration LocationConstraint=<region-name>
```

# 2. List buckets

```
aws s3 ls
aws s3api list-buckets
aws s3api list-buckets --query Buckets
# List names only
aws s3api list-buckets --query Buckets[].Name
# Filter for names
aws s3api list-buckets --query "Buckets[?Name == '<bucket-name>']"
```

# 3. Delete bucket

```
# Force delete non empty bucket (versioning off)
aws s3 rb s3://<bucket-name> --force
```

# 4. Upload objects

```
# Upload single file 
aws s3 cp <file-path> s3://<bucket-name>/
# Batch upload files in a folder
aws s3 cp <folder-path> s3://<bucket-name>/<folder-name> --recursive
# Upload files in a folder but avoid those already is on the bucket
aws s3 sync <folder-path> s3://<bucket-name>
```

# 5. List objects

```
aws s3api list-objects --bucket <bucket-name>
# List for keys only (file name)
aws s3api list-objects --bucket <bucket-name> --query Contents[].Key
```

# 6. Delete object

```
# Delete single object
aws s3 rm s3://<bucket-name>/<file-name>
# Delete folder
aws s3 rm s3://<bucket-name>/<folder-name> --recursive
```

# 7. Create folders

```
aws s3api put-object --bucket <bucket-name> --key "folder/"
```
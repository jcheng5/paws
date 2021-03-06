# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common populate
#' @include forecastservice_service.R
NULL

.forecastservice$create_dataset_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(DatasetName = structure(logical(0), tags = list(type = "string")), Domain = structure(logical(0), tags = list(type = "string")), DatasetType = structure(logical(0), tags = list(type = "string")), DataFrequency = structure(logical(0), tags = list(type = "string")), Schema = structure(list(Attributes = structure(list(structure(list(AttributeName = structure(logical(0), tags = list(type = "string")), AttributeType = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure")), EncryptionConfig = structure(list(RoleArn = structure(logical(0), tags = list(type = "string")), KMSKeyArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), Tags = structure(list(structure(list(Key = structure(logical(0), tags = list(type = "string")), Value = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$create_dataset_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(DatasetArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$create_dataset_group_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(DatasetGroupName = structure(logical(0), tags = list(type = "string")), Domain = structure(logical(0), tags = list(type = "string")), DatasetArns = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list")), Tags = structure(list(structure(list(Key = structure(logical(0), tags = list(type = "string")), Value = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$create_dataset_group_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(DatasetGroupArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$create_dataset_import_job_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(DatasetImportJobName = structure(logical(0), tags = list(type = "string")), DatasetArn = structure(logical(0), tags = list(type = "string")), DataSource = structure(list(S3Config = structure(list(Path = structure(logical(0), tags = list(type = "string")), RoleArn = structure(logical(0), tags = list(type = "string")), KMSKeyArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure")), TimestampFormat = structure(logical(0), tags = list(type = "string")), Tags = structure(list(structure(list(Key = structure(logical(0), tags = list(type = "string")), Value = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$create_dataset_import_job_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(DatasetImportJobArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$create_forecast_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ForecastName = structure(logical(0), tags = list(type = "string")), PredictorArn = structure(logical(0), tags = list(type = "string")), ForecastTypes = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list")), Tags = structure(list(structure(list(Key = structure(logical(0), tags = list(type = "string")), Value = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$create_forecast_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ForecastArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$create_forecast_export_job_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ForecastExportJobName = structure(logical(0), tags = list(type = "string")), ForecastArn = structure(logical(0), tags = list(type = "string")), Destination = structure(list(S3Config = structure(list(Path = structure(logical(0), tags = list(type = "string")), RoleArn = structure(logical(0), tags = list(type = "string")), KMSKeyArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure")), Tags = structure(list(structure(list(Key = structure(logical(0), tags = list(type = "string")), Value = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$create_forecast_export_job_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ForecastExportJobArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$create_predictor_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(PredictorName = structure(logical(0), tags = list(type = "string")), AlgorithmArn = structure(logical(0), tags = list(type = "string")), ForecastHorizon = structure(logical(0), tags = list(type = "integer")), PerformAutoML = structure(logical(0), tags = list(type = "boolean")), PerformHPO = structure(logical(0), tags = list(type = "boolean")), TrainingParameters = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "map")), EvaluationParameters = structure(list(NumberOfBacktestWindows = structure(logical(0), tags = list(type = "integer")), BackTestWindowOffset = structure(logical(0), tags = list(type = "integer"))), tags = list(type = "structure")), HPOConfig = structure(list(ParameterRanges = structure(list(CategoricalParameterRanges = structure(list(structure(list(Name = structure(logical(0), tags = list(type = "string")), Values = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list"))), tags = list(type = "structure"))), tags = list(type = "list")), ContinuousParameterRanges = structure(list(structure(list(Name = structure(logical(0), tags = list(type = "string")), MaxValue = structure(logical(0), tags = list(type = "double")), MinValue = structure(logical(0), tags = list(type = "double")), ScalingType = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list")), IntegerParameterRanges = structure(list(structure(list(Name = structure(logical(0), tags = list(type = "string")), MaxValue = structure(logical(0), tags = list(type = "integer")), MinValue = structure(logical(0), tags = list(type = "integer")), ScalingType = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))), tags = list(type = "structure")), InputDataConfig = structure(list(DatasetGroupArn = structure(logical(0), tags = list(type = "string")), SupplementaryFeatures = structure(list(structure(list(Name = structure(logical(0), tags = list(type = "string")), Value = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure")), FeaturizationConfig = structure(list(ForecastFrequency = structure(logical(0), tags = list(type = "string")), ForecastDimensions = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list")), Featurizations = structure(list(structure(list(AttributeName = structure(logical(0), tags = list(type = "string")), FeaturizationPipeline = structure(list(structure(list(FeaturizationMethodName = structure(logical(0), tags = list(type = "string")), FeaturizationMethodParameters = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "map"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure")), EncryptionConfig = structure(list(RoleArn = structure(logical(0), tags = list(type = "string")), KMSKeyArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), Tags = structure(list(structure(list(Key = structure(logical(0), tags = list(type = "string")), Value = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$create_predictor_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(PredictorArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$delete_dataset_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(DatasetArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$delete_dataset_output <- function(...) {
  list()
}

.forecastservice$delete_dataset_group_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(DatasetGroupArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$delete_dataset_group_output <- function(...) {
  list()
}

.forecastservice$delete_dataset_import_job_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(DatasetImportJobArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$delete_dataset_import_job_output <- function(...) {
  list()
}

.forecastservice$delete_forecast_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ForecastArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$delete_forecast_output <- function(...) {
  list()
}

.forecastservice$delete_forecast_export_job_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ForecastExportJobArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$delete_forecast_export_job_output <- function(...) {
  list()
}

.forecastservice$delete_predictor_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(PredictorArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$delete_predictor_output <- function(...) {
  list()
}

.forecastservice$describe_dataset_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(DatasetArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$describe_dataset_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(DatasetArn = structure(logical(0), tags = list(type = "string")), DatasetName = structure(logical(0), tags = list(type = "string")), Domain = structure(logical(0), tags = list(type = "string")), DatasetType = structure(logical(0), tags = list(type = "string")), DataFrequency = structure(logical(0), tags = list(type = "string")), Schema = structure(list(Attributes = structure(list(structure(list(AttributeName = structure(logical(0), tags = list(type = "string")), AttributeType = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure")), EncryptionConfig = structure(list(RoleArn = structure(logical(0), tags = list(type = "string")), KMSKeyArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), Status = structure(logical(0), tags = list(type = "string")), CreationTime = structure(logical(0), tags = list(type = "timestamp")), LastModificationTime = structure(logical(0), tags = list(type = "timestamp"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$describe_dataset_group_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(DatasetGroupArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$describe_dataset_group_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(DatasetGroupName = structure(logical(0), tags = list(type = "string")), DatasetGroupArn = structure(logical(0), tags = list(type = "string")), DatasetArns = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list")), Domain = structure(logical(0), tags = list(type = "string")), Status = structure(logical(0), tags = list(type = "string")), CreationTime = structure(logical(0), tags = list(type = "timestamp")), LastModificationTime = structure(logical(0), tags = list(type = "timestamp"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$describe_dataset_import_job_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(DatasetImportJobArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$describe_dataset_import_job_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(DatasetImportJobName = structure(logical(0), tags = list(type = "string")), DatasetImportJobArn = structure(logical(0), tags = list(type = "string")), DatasetArn = structure(logical(0), tags = list(type = "string")), TimestampFormat = structure(logical(0), tags = list(type = "string")), DataSource = structure(list(S3Config = structure(list(Path = structure(logical(0), tags = list(type = "string")), RoleArn = structure(logical(0), tags = list(type = "string")), KMSKeyArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure")), FieldStatistics = structure(list(structure(list(Count = structure(logical(0), tags = list(type = "integer")), CountDistinct = structure(logical(0), tags = list(type = "integer")), CountNull = structure(logical(0), tags = list(type = "integer")), CountNan = structure(logical(0), tags = list(type = "integer")), Min = structure(logical(0), tags = list(type = "string")), Max = structure(logical(0), tags = list(type = "string")), Avg = structure(logical(0), tags = list(type = "double")), Stddev = structure(logical(0), tags = list(type = "double"))), tags = list(type = "structure"))), tags = list(type = "map")), DataSize = structure(logical(0), tags = list(type = "double")), Status = structure(logical(0), tags = list(type = "string")), Message = structure(logical(0), tags = list(type = "string")), CreationTime = structure(logical(0), tags = list(type = "timestamp")), LastModificationTime = structure(logical(0), tags = list(type = "timestamp"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$describe_forecast_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ForecastArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$describe_forecast_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ForecastArn = structure(logical(0), tags = list(type = "string")), ForecastName = structure(logical(0), tags = list(type = "string")), ForecastTypes = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list")), PredictorArn = structure(logical(0), tags = list(type = "string")), DatasetGroupArn = structure(logical(0), tags = list(type = "string")), Status = structure(logical(0), tags = list(type = "string")), Message = structure(logical(0), tags = list(type = "string")), CreationTime = structure(logical(0), tags = list(type = "timestamp")), LastModificationTime = structure(logical(0), tags = list(type = "timestamp"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$describe_forecast_export_job_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ForecastExportJobArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$describe_forecast_export_job_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ForecastExportJobArn = structure(logical(0), tags = list(type = "string")), ForecastExportJobName = structure(logical(0), tags = list(type = "string")), ForecastArn = structure(logical(0), tags = list(type = "string")), Destination = structure(list(S3Config = structure(list(Path = structure(logical(0), tags = list(type = "string")), RoleArn = structure(logical(0), tags = list(type = "string")), KMSKeyArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure")), Message = structure(logical(0), tags = list(type = "string")), Status = structure(logical(0), tags = list(type = "string")), CreationTime = structure(logical(0), tags = list(type = "timestamp")), LastModificationTime = structure(logical(0), tags = list(type = "timestamp"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$describe_predictor_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(PredictorArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$describe_predictor_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(PredictorArn = structure(logical(0), tags = list(type = "string")), PredictorName = structure(logical(0), tags = list(type = "string")), AlgorithmArn = structure(logical(0), tags = list(type = "string")), ForecastHorizon = structure(logical(0), tags = list(type = "integer")), PerformAutoML = structure(logical(0), tags = list(type = "boolean")), PerformHPO = structure(logical(0), tags = list(type = "boolean")), TrainingParameters = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "map")), EvaluationParameters = structure(list(NumberOfBacktestWindows = structure(logical(0), tags = list(type = "integer")), BackTestWindowOffset = structure(logical(0), tags = list(type = "integer"))), tags = list(type = "structure")), HPOConfig = structure(list(ParameterRanges = structure(list(CategoricalParameterRanges = structure(list(structure(list(Name = structure(logical(0), tags = list(type = "string")), Values = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list"))), tags = list(type = "structure"))), tags = list(type = "list")), ContinuousParameterRanges = structure(list(structure(list(Name = structure(logical(0), tags = list(type = "string")), MaxValue = structure(logical(0), tags = list(type = "double")), MinValue = structure(logical(0), tags = list(type = "double")), ScalingType = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list")), IntegerParameterRanges = structure(list(structure(list(Name = structure(logical(0), tags = list(type = "string")), MaxValue = structure(logical(0), tags = list(type = "integer")), MinValue = structure(logical(0), tags = list(type = "integer")), ScalingType = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))), tags = list(type = "structure")), InputDataConfig = structure(list(DatasetGroupArn = structure(logical(0), tags = list(type = "string")), SupplementaryFeatures = structure(list(structure(list(Name = structure(logical(0), tags = list(type = "string")), Value = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure")), FeaturizationConfig = structure(list(ForecastFrequency = structure(logical(0), tags = list(type = "string")), ForecastDimensions = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list")), Featurizations = structure(list(structure(list(AttributeName = structure(logical(0), tags = list(type = "string")), FeaturizationPipeline = structure(list(structure(list(FeaturizationMethodName = structure(logical(0), tags = list(type = "string")), FeaturizationMethodParameters = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "map"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure")), EncryptionConfig = structure(list(RoleArn = structure(logical(0), tags = list(type = "string")), KMSKeyArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure")), PredictorExecutionDetails = structure(list(PredictorExecutions = structure(list(structure(list(AlgorithmArn = structure(logical(0), tags = list(type = "string")), TestWindows = structure(list(structure(list(TestWindowStart = structure(logical(0), tags = list(type = "timestamp")), TestWindowEnd = structure(logical(0), tags = list(type = "timestamp")), Status = structure(logical(0), tags = list(type = "string")), Message = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure")), DatasetImportJobArns = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list")), AutoMLAlgorithmArns = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list")), Status = structure(logical(0), tags = list(type = "string")), Message = structure(logical(0), tags = list(type = "string")), CreationTime = structure(logical(0), tags = list(type = "timestamp")), LastModificationTime = structure(logical(0), tags = list(type = "timestamp"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$get_accuracy_metrics_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(PredictorArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$get_accuracy_metrics_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(PredictorEvaluationResults = structure(list(structure(list(AlgorithmArn = structure(logical(0), tags = list(type = "string")), TestWindows = structure(list(structure(list(TestWindowStart = structure(logical(0), tags = list(type = "timestamp")), TestWindowEnd = structure(logical(0), tags = list(type = "timestamp")), ItemCount = structure(logical(0), tags = list(type = "integer")), EvaluationType = structure(logical(0), tags = list(type = "string")), Metrics = structure(list(RMSE = structure(logical(0), tags = list(type = "double")), WeightedQuantileLosses = structure(list(structure(list(Quantile = structure(logical(0), tags = list(type = "double")), LossValue = structure(logical(0), tags = list(type = "double"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$list_dataset_groups_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(NextToken = structure(logical(0), tags = list(type = "string")), MaxResults = structure(logical(0), tags = list(type = "integer"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$list_dataset_groups_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(DatasetGroups = structure(list(structure(list(DatasetGroupArn = structure(logical(0), tags = list(type = "string")), DatasetGroupName = structure(logical(0), tags = list(type = "string")), CreationTime = structure(logical(0), tags = list(type = "timestamp")), LastModificationTime = structure(logical(0), tags = list(type = "timestamp"))), tags = list(type = "structure"))), tags = list(type = "list")), NextToken = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$list_dataset_import_jobs_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(NextToken = structure(logical(0), tags = list(type = "string")), MaxResults = structure(logical(0), tags = list(type = "integer")), Filters = structure(list(structure(list(Key = structure(logical(0), tags = list(type = "string")), Value = structure(logical(0), tags = list(type = "string")), Condition = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$list_dataset_import_jobs_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(DatasetImportJobs = structure(list(structure(list(DatasetImportJobArn = structure(logical(0), tags = list(type = "string")), DatasetImportJobName = structure(logical(0), tags = list(type = "string")), DataSource = structure(list(S3Config = structure(list(Path = structure(logical(0), tags = list(type = "string")), RoleArn = structure(logical(0), tags = list(type = "string")), KMSKeyArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure")), Status = structure(logical(0), tags = list(type = "string")), Message = structure(logical(0), tags = list(type = "string")), CreationTime = structure(logical(0), tags = list(type = "timestamp")), LastModificationTime = structure(logical(0), tags = list(type = "timestamp"))), tags = list(type = "structure"))), tags = list(type = "list")), NextToken = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$list_datasets_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(NextToken = structure(logical(0), tags = list(type = "string")), MaxResults = structure(logical(0), tags = list(type = "integer"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$list_datasets_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Datasets = structure(list(structure(list(DatasetArn = structure(logical(0), tags = list(type = "string")), DatasetName = structure(logical(0), tags = list(type = "string")), DatasetType = structure(logical(0), tags = list(type = "string")), Domain = structure(logical(0), tags = list(type = "string")), CreationTime = structure(logical(0), tags = list(type = "timestamp")), LastModificationTime = structure(logical(0), tags = list(type = "timestamp"))), tags = list(type = "structure"))), tags = list(type = "list")), NextToken = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$list_forecast_export_jobs_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(NextToken = structure(logical(0), tags = list(type = "string")), MaxResults = structure(logical(0), tags = list(type = "integer")), Filters = structure(list(structure(list(Key = structure(logical(0), tags = list(type = "string")), Value = structure(logical(0), tags = list(type = "string")), Condition = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$list_forecast_export_jobs_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ForecastExportJobs = structure(list(structure(list(ForecastExportJobArn = structure(logical(0), tags = list(type = "string")), ForecastExportJobName = structure(logical(0), tags = list(type = "string")), Destination = structure(list(S3Config = structure(list(Path = structure(logical(0), tags = list(type = "string")), RoleArn = structure(logical(0), tags = list(type = "string")), KMSKeyArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "structure")), Status = structure(logical(0), tags = list(type = "string")), Message = structure(logical(0), tags = list(type = "string")), CreationTime = structure(logical(0), tags = list(type = "timestamp")), LastModificationTime = structure(logical(0), tags = list(type = "timestamp"))), tags = list(type = "structure"))), tags = list(type = "list")), NextToken = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$list_forecasts_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(NextToken = structure(logical(0), tags = list(type = "string")), MaxResults = structure(logical(0), tags = list(type = "integer")), Filters = structure(list(structure(list(Key = structure(logical(0), tags = list(type = "string")), Value = structure(logical(0), tags = list(type = "string")), Condition = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$list_forecasts_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Forecasts = structure(list(structure(list(ForecastArn = structure(logical(0), tags = list(type = "string")), ForecastName = structure(logical(0), tags = list(type = "string")), PredictorArn = structure(logical(0), tags = list(type = "string")), DatasetGroupArn = structure(logical(0), tags = list(type = "string")), Status = structure(logical(0), tags = list(type = "string")), Message = structure(logical(0), tags = list(type = "string")), CreationTime = structure(logical(0), tags = list(type = "timestamp")), LastModificationTime = structure(logical(0), tags = list(type = "timestamp"))), tags = list(type = "structure"))), tags = list(type = "list")), NextToken = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$list_predictors_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(NextToken = structure(logical(0), tags = list(type = "string")), MaxResults = structure(logical(0), tags = list(type = "integer")), Filters = structure(list(structure(list(Key = structure(logical(0), tags = list(type = "string")), Value = structure(logical(0), tags = list(type = "string")), Condition = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$list_predictors_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Predictors = structure(list(structure(list(PredictorArn = structure(logical(0), tags = list(type = "string")), PredictorName = structure(logical(0), tags = list(type = "string")), DatasetGroupArn = structure(logical(0), tags = list(type = "string")), Status = structure(logical(0), tags = list(type = "string")), Message = structure(logical(0), tags = list(type = "string")), CreationTime = structure(logical(0), tags = list(type = "timestamp")), LastModificationTime = structure(logical(0), tags = list(type = "timestamp"))), tags = list(type = "structure"))), tags = list(type = "list")), NextToken = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$list_tags_for_resource_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ResourceArn = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$list_tags_for_resource_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(Tags = structure(list(structure(list(Key = structure(logical(0), tags = list(type = "string")), Value = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$tag_resource_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ResourceArn = structure(logical(0), tags = list(type = "string")), Tags = structure(list(structure(list(Key = structure(logical(0), tags = list(type = "string")), Value = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$tag_resource_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$untag_resource_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(ResourceArn = structure(logical(0), tags = list(type = "string")), TagKeys = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$untag_resource_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$update_dataset_group_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(DatasetGroupArn = structure(logical(0), tags = list(type = "string")), DatasetArns = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.forecastservice$update_dataset_group_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(), tags = list(type = "structure"))
  return(populate(args, shape))
}

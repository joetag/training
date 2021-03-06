#!/bin/bash
# Copyright 2018 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source ${SCRIPT_DIR}/common.sh
source ${SCRIPT_DIR}/utils.sh

echo "Using Project:            ${PROJECT}"
echo "Service Account:          ${SERVICE_ACCOUNT}"
echo "Service Account Email:    ${SERVICE_ACCOUNT_EMAIL}"
echo "Service Account Key Loc:  ${SERVICE_ACCOUNT_KEY_LOCATION}"
echo "Bucket name:              ${BUCKET_NAME}"

check_gcloud_exists
check_gsutil_exists
create_service_account_key

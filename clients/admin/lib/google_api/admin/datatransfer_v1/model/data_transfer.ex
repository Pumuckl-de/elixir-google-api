# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Admin.Datatransfer_v1.Model.DataTransfer do
  @moduledoc """
  A Transfer resource represents the transfer of the ownership of user data between users.

  ## Attributes

  *   `applicationDataTransfers` (*type:* `list(GoogleApi.Admin.Datatransfer_v1.Model.ApplicationDataTransfer.t)`, *default:* `nil`) - The list of per-application data transfer resources. It contains details of the applications associated with this transfer resource, and also specifies the applications for which data transfer has to be done at the time of the transfer resource creation.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Read-only. The transfer's ID.
  *   `kind` (*type:* `String.t`, *default:* `admin#datatransfer#DataTransfer`) - Identifies the resource as a DataTransfer request.
  *   `newOwnerUserId` (*type:* `String.t`, *default:* `nil`) - ID of the user to whom the data is being transferred.
  *   `oldOwnerUserId` (*type:* `String.t`, *default:* `nil`) - ID of the user whose data is being transferred.
  *   `overallTransferStatusCode` (*type:* `String.t`, *default:* `nil`) - Read-only. Overall transfer status.
  *   `requestTime` (*type:* `DateTime.t`, *default:* `nil`) - Read-only. The time at which the data transfer was requested.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :applicationDataTransfers =>
            list(GoogleApi.Admin.Datatransfer_v1.Model.ApplicationDataTransfer.t()) | nil,
          :etag => String.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :newOwnerUserId => String.t() | nil,
          :oldOwnerUserId => String.t() | nil,
          :overallTransferStatusCode => String.t() | nil,
          :requestTime => DateTime.t() | nil
        }

  field(:applicationDataTransfers,
    as: GoogleApi.Admin.Datatransfer_v1.Model.ApplicationDataTransfer,
    type: :list
  )

  field(:etag)
  field(:id)
  field(:kind)
  field(:newOwnerUserId)
  field(:oldOwnerUserId)
  field(:overallTransferStatusCode)
  field(:requestTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Datatransfer_v1.Model.DataTransfer do
  def decode(value, options) do
    GoogleApi.Admin.Datatransfer_v1.Model.DataTransfer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Datatransfer_v1.Model.DataTransfer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

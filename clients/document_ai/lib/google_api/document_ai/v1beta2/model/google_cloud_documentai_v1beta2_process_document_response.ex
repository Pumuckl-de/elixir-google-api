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

defmodule GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse do
  @moduledoc """
  Response to a single document processing request.

  ## Attributes

  *   `inputConfig` (*type:* `GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2InputConfig.t`, *default:* `nil`) - Information about the input file. This is the same as the corresponding
      input config in the request.
  *   `outputConfig` (*type:* `GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2OutputConfig.t`, *default:* `nil`) - The output location of the parsed responses. The responses are written to
      this location as JSON-serialized `Document` objects.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :inputConfig =>
            GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2InputConfig.t(),
          :outputConfig =>
            GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2OutputConfig.t()
        }

  field(:inputConfig,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2InputConfig
  )

  field(:outputConfig,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2OutputConfig
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2ProcessDocumentResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

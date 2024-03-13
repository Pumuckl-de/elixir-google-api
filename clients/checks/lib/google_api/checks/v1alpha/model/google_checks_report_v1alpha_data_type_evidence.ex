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

defmodule GoogleApi.Checks.V1alpha.Model.GoogleChecksReportV1alphaDataTypeEvidence do
  @moduledoc """
  Evidence collected about a data type.

  ## Attributes

  *   `endpoints` (*type:* `list(GoogleApi.Checks.V1alpha.Model.GoogleChecksReportV1alphaDataTypeEndpointEvidence.t)`, *default:* `nil`) - List of endpoints the data type was sent to.
  *   `permissions` (*type:* `list(GoogleApi.Checks.V1alpha.Model.GoogleChecksReportV1alphaDataTypePermissionEvidence.t)`, *default:* `nil`) - List of included permissions that imply collection of the data type.
  *   `privacyPolicyTexts` (*type:* `list(GoogleApi.Checks.V1alpha.Model.GoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence.t)`, *default:* `nil`) - List of privacy policy texts that imply collection of the data type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endpoints =>
            list(
              GoogleApi.Checks.V1alpha.Model.GoogleChecksReportV1alphaDataTypeEndpointEvidence.t()
            )
            | nil,
          :permissions =>
            list(
              GoogleApi.Checks.V1alpha.Model.GoogleChecksReportV1alphaDataTypePermissionEvidence.t()
            )
            | nil,
          :privacyPolicyTexts =>
            list(
              GoogleApi.Checks.V1alpha.Model.GoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence.t()
            )
            | nil
        }

  field(:endpoints,
    as: GoogleApi.Checks.V1alpha.Model.GoogleChecksReportV1alphaDataTypeEndpointEvidence,
    type: :list
  )

  field(:permissions,
    as: GoogleApi.Checks.V1alpha.Model.GoogleChecksReportV1alphaDataTypePermissionEvidence,
    type: :list
  )

  field(:privacyPolicyTexts,
    as: GoogleApi.Checks.V1alpha.Model.GoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Checks.V1alpha.Model.GoogleChecksReportV1alphaDataTypeEvidence do
  def decode(value, options) do
    GoogleApi.Checks.V1alpha.Model.GoogleChecksReportV1alphaDataTypeEvidence.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Checks.V1alpha.Model.GoogleChecksReportV1alphaDataTypeEvidence do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.Domains.V1.Model.DnsSettings do
  @moduledoc """
  Defines the DNS configuration of a `Registration`, including name servers, DNSSEC, and glue records.

  ## Attributes

  *   `customDns` (*type:* `GoogleApi.Domains.V1.Model.CustomDns.t`, *default:* `nil`) - An arbitrary DNS provider identified by its name servers.
  *   `glueRecords` (*type:* `list(GoogleApi.Domains.V1.Model.GlueRecord.t)`, *default:* `nil`) - The list of glue records for this `Registration`. Commonly empty.
  *   `googleDomainsDns` (*type:* `GoogleApi.Domains.V1.Model.GoogleDomainsDns.t`, *default:* `nil`) - Deprecated: For more information, see [Cloud Domains feature deprecation](https://cloud.google.com/domains/docs/deprecations/feature-deprecations). The free DNS zone provided by [Google Domains](https://domains.google/).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customDns => GoogleApi.Domains.V1.Model.CustomDns.t() | nil,
          :glueRecords => list(GoogleApi.Domains.V1.Model.GlueRecord.t()) | nil,
          :googleDomainsDns => GoogleApi.Domains.V1.Model.GoogleDomainsDns.t() | nil
        }

  field(:customDns, as: GoogleApi.Domains.V1.Model.CustomDns)
  field(:glueRecords, as: GoogleApi.Domains.V1.Model.GlueRecord, type: :list)
  field(:googleDomainsDns, as: GoogleApi.Domains.V1.Model.GoogleDomainsDns)
end

defimpl Poison.Decoder, for: GoogleApi.Domains.V1.Model.DnsSettings do
  def decode(value, options) do
    GoogleApi.Domains.V1.Model.DnsSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Domains.V1.Model.DnsSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

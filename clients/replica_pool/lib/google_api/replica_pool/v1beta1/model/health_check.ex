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

defmodule GoogleApi.ReplicaPool.V1beta1.Model.HealthCheck do
  @moduledoc """


  ## Attributes

  *   `checkIntervalSec` (*type:* `integer()`, *default:* `nil`) - How often (in seconds) to make HTTP requests for this healthcheck. The default value is 5 seconds.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The description for this health check.
  *   `healthyThreshold` (*type:* `integer()`, *default:* `nil`) - The number of consecutive health check requests that need to succeed before the replica is considered healthy again. The default value is 2.
  *   `host` (*type:* `String.t`, *default:* `nil`) - The value of the host header in the HTTP health check request. If left empty (default value), the localhost IP 127.0.0.1 will be used.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of this health check.
  *   `path` (*type:* `String.t`, *default:* `nil`) - The localhost request path to send this health check, in the format /path/to/use. For example, /healthcheck.
  *   `port` (*type:* `integer()`, *default:* `nil`) - The TCP port for the health check requests.
  *   `timeoutSec` (*type:* `integer()`, *default:* `nil`) - How long (in seconds) to wait before a timeout failure for this healthcheck. The default value is 5 seconds.
  *   `unhealthyThreshold` (*type:* `integer()`, *default:* `nil`) - The number of consecutive health check requests that need to fail in order to consider the replica unhealthy. The default value is 2.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :checkIntervalSec => integer(),
          :description => String.t(),
          :healthyThreshold => integer(),
          :host => String.t(),
          :name => String.t(),
          :path => String.t(),
          :port => integer(),
          :timeoutSec => integer(),
          :unhealthyThreshold => integer()
        }

  field(:checkIntervalSec)
  field(:description)
  field(:healthyThreshold)
  field(:host)
  field(:name)
  field(:path)
  field(:port)
  field(:timeoutSec)
  field(:unhealthyThreshold)
end

defimpl Poison.Decoder, for: GoogleApi.ReplicaPool.V1beta1.Model.HealthCheck do
  def decode(value, options) do
    GoogleApi.ReplicaPool.V1beta1.Model.HealthCheck.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ReplicaPool.V1beta1.Model.HealthCheck do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

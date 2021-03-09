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

defmodule GoogleApi.ServiceNetworking.V1.Model.Monitoring do
  @moduledoc """
  Monitoring configuration of the service. The example below shows how to configure monitored resources and metrics for monitoring. In the example, a monitored resource and two metrics are defined. The `library.googleapis.com/book/returned_count` metric is sent to both producer and consumer projects, whereas the `library.googleapis.com/book/num_overdue` metric is only sent to the consumer project. monitored_resources: - type: library.googleapis.com/Branch display_name: "Library Branch" description: "A branch of a library." launch_stage: GA labels: - key: resource_container description: "The Cloud container (ie. project id) for the Branch." - key: location description: "The location of the library branch." - key: branch_id description: "The id of the branch." metrics: - name: library.googleapis.com/book/returned_count display_name: "Books Returned" description: "The count of books that have been returned." launch_stage: GA metric_kind: DELTA value_type: INT64 unit: "1" labels: - key: customer_id description: "The id of the customer." - name: library.googleapis.com/book/num_overdue display_name: "Books Overdue" description: "The current number of overdue books." launch_stage: GA metric_kind: GAUGE value_type: INT64 unit: "1" labels: - key: customer_id description: "The id of the customer." monitoring: producer_destinations: - monitored_resource: library.googleapis.com/Branch metrics: - library.googleapis.com/book/returned_count consumer_destinations: - monitored_resource: library.googleapis.com/Branch metrics: - library.googleapis.com/book/returned_count - library.googleapis.com/book/num_overdue

  ## Attributes

  *   `consumerDestinations` (*type:* `list(GoogleApi.ServiceNetworking.V1.Model.MonitoringDestination.t)`, *default:* `nil`) - Monitoring configurations for sending metrics to the consumer project. There can be multiple consumer destinations. A monitored resource type may appear in multiple monitoring destinations if different aggregations are needed for different sets of metrics associated with that monitored resource type. A monitored resource and metric pair may only be used once in the Monitoring configuration.
  *   `producerDestinations` (*type:* `list(GoogleApi.ServiceNetworking.V1.Model.MonitoringDestination.t)`, *default:* `nil`) - Monitoring configurations for sending metrics to the producer project. There can be multiple producer destinations. A monitored resource type may appear in multiple monitoring destinations if different aggregations are needed for different sets of metrics associated with that monitored resource type. A monitored resource and metric pair may only be used once in the Monitoring configuration.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consumerDestinations =>
            list(GoogleApi.ServiceNetworking.V1.Model.MonitoringDestination.t()) | nil,
          :producerDestinations =>
            list(GoogleApi.ServiceNetworking.V1.Model.MonitoringDestination.t()) | nil
        }

  field(:consumerDestinations,
    as: GoogleApi.ServiceNetworking.V1.Model.MonitoringDestination,
    type: :list
  )

  field(:producerDestinations,
    as: GoogleApi.ServiceNetworking.V1.Model.MonitoringDestination,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.ServiceNetworking.V1.Model.Monitoring do
  def decode(value, options) do
    GoogleApi.ServiceNetworking.V1.Model.Monitoring.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceNetworking.V1.Model.Monitoring do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

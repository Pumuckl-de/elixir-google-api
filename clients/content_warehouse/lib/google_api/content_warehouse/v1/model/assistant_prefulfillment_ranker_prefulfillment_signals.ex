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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantPrefulfillmentRankerPrefulfillmentSignals do
  @moduledoc """
  Signals to be used by the Prefulfillment Ranker. Derived from the ParsingSignals and GroundingSignals carried by the FunctionCall. LINT.IfChange Next ID: 74

  ## Attributes

  *   `fulfillableDominantMedia` (*type:* `boolean()`, *default:* `nil`) - Whether this is a fulfillable, dominant Media intent.
  *   `generatedByLegacyAquaDomain` (*type:* `boolean()`, *default:* `nil`) - Whether or not the intent was generated by a legacy Aqua domain that PFR should care about.
  *   `hasAnswerGroup` (*type:* `boolean()`, *default:* `nil`) - Whether the interpretation has a Search answer group object, signifying it came from Search resolution.
  *   `subIntentType` (*type:* `String.t`, *default:* `nil`) - 
  *   `isIntentFromOrbit` (*type:* `boolean()`, *default:* `nil`) - Whether the intent is from ORBIT.
  *   `usesGroundingBox` (*type:* `boolean()`, *default:* `nil`) - Whether the interpretation should run through grounding box or not.
  *   `effectiveArgSpanLength` (*type:* `number()`, *default:* `nil`) - The total effective length of the spans for the arguments used to construct the parse. May include vertical specific adjustments. Eg: For the query [delete my 7 p.m. alarm called chicken] and intent Delete_alarm(alarm_object=RD(category=AlarmObject( label="chicken", trigger_time_datetime=<< 7 PM >>))), the effective argument span is "7 p.m." + "chicken" (total length of 13).
  *   `phase` (*type:* `String.t`, *default:* `nil`) - Query understanding phase the intent was produced in.
  *   `isFullyGrounded` (*type:* `boolean()`, *default:* `nil`) - Whether the intent is fully grounded.
  *   `isSageInNageIntent` (*type:* `boolean()`, *default:* `nil`) - Whether the intent is produced by the Sage IntentGenerator invoked by the NSP intent-generator (thus, Sage-in-NSP-invoking_Sage, or Sage-in-Nage).
  *   `isSageDisabledIntent` (*type:* `boolean()`, *default:* `nil`) - Whether the intent is an intent marked disabled by the Sage IG.
  *   `deepMediaDominant` (*type:* `boolean()`, *default:* `nil`) - Whether the intent is dominant according to NSP deep-media.
  *   `isVideoIntent` (*type:* `boolean()`, *default:* `nil`) - Whether the intent is a media object video intent.
  *   `parsingScoreMse8BucketId` (*type:* `integer()`, *default:* `nil`) - A ID corresponding to which bucket a given parsing score belongs in.
  *   `predictedIntentConfidence` (*type:* `number()`, *default:* `nil`) - Intent confidence predicted by the AssistantVerticalClassifier QRewrite servlet.
  *   `nspIntentParseScore` (*type:* `float()`, *default:* `nil`) - Parse score generated by NSP. If NSP intent has been pruned due to dededuplication, It will have highest parse score for deduplicated intent.
  *   `numConstraints` (*type:* `float()`, *default:* `nil`) - Signals as proposed in go/improved-grounding-signals. Sum of the number of constraints used by the Grounding Box to ground each variable.
  *   `isPodcastIntent` (*type:* `boolean()`, *default:* `nil`) - Whether the intent is a podcast intent.
  *   `isDummyIntent` (*type:* `boolean()`, *default:* `nil`) - 
  *   `isScoreBasedIntent` (*type:* `boolean()`, *default:* `nil`) - Whether this intent is a score-based intent, relying on PFR for scoring and pruning to the top intent.
  *   `platinumSource` (*type:* `boolean()`, *default:* `nil`) - Whether the intent comes from the Sage IntentGenerator's "platinum" source, signifying high-confidence in quality.
  *   `nspRank` (*type:* `integer()`, *default:* `nil`) - Rank of the intent as reported by NSP.
  *   `dominant` (*type:* `boolean()`, *default:* `nil`) - Indicates interpretation dominance predicted by KScorer
  *   `isRadioIntent` (*type:* `boolean()`, *default:* `nil`) - Whether the intent is a PlayMedia radio intent.
  *   `searchDispatch` (*type:* `String.t`, *default:* `nil`) - The determination made by the SearchDispatchingConfig as to whether and how this interpretation should be dispatched to Search.
  *   `isHighConfidencePodcastIntent` (*type:* `boolean()`, *default:* `nil`) - Used for PFR manual rule to prefer high confidence podcast intent (e.g. topical, genre) over generic podcast intents.
  *   `calibratedParsingScore` (*type:* `float()`, *default:* `nil`) - A parsing score that is independently calibrated by each parser/IG.
  *   `intentNameAuisScoreExp` (*type:* `float()`, *default:* `nil`) - Assistant User Interaction Score which is aggregated using intent name from exp laelaps.
  *   `inQueryMaxEffectiveArgSpanLength` (*type:* `number()`, *default:* `nil`) - This is a cross-intent feature which is calculated by iterating all intent candidates. This feature should be populated in post-IG stage (before GB).
  *   `pq2tVsAssistantIbstCosine` (*type:* `float()`, *default:* `nil`) - Cosine similarity between predicted query-to-term model and assistant intent-type-based salient terms. This is intended to be only used for ACE ranking and only populated for assistant traffic.
  *   `isTvmIntent` (*type:* `boolean()`, *default:* `nil`) - Whether the intent is a media object tvm intent.
  *   `numGroundedArgs` (*type:* `float()`, *default:* `nil`) - Number of grounded arguments the intent has, populated by the Grounding Box.
  *   `numGroundableArgs` (*type:* `float()`, *default:* `nil`) - Grounding Signals. Number of groundable arguments the intent has, populated by the Grounding Box.
  *   `intentType` (*type:* `String.t`, *default:* `nil`) - intent_type differentiates between intents that share the top level intent name. For eg: for TV_FALLBACK_SEARCH_INTENT, the top level intent name must be "Find_media" and the media_object argument within it must be of type "Media_unspecified".
  *   `pq2tVsIbstCosine` (*type:* `float()`, *default:* `nil`) - Cosine similarity between predicted query-to-term model and intent-type-based salient terms. This is intended to be used as a backoff to pq2t_vs_qibst_cosine if it is missing.
  *   `isNspIntent` (*type:* `boolean()`, *default:* `nil`) - Whether this interpretation was genearted by NSP.
  *   `isSageIntent` (*type:* `boolean()`, *default:* `nil`) - Whether this intent was generated by Sage.
  *   `intentNameAuisScore` (*type:* `float()`, *default:* `nil`) - QUS intent-based ranking signals. Assistant User Interaction Score which is aggregated using intent name.
  *   `kScore` (*type:* `number()`, *default:* `nil`) - Used for PFR manaul rule to prefer high kscore radio intent. The k-score comes from twiddled_ranking_scores in query interpretations.
  *   `isAquaMediaIntent` (*type:* `boolean()`, *default:* `nil`) - Whether the intent aqua intent from media domain enabled in QBT
  *   `isValidSmarthomeIntent` (*type:* `boolean()`, *default:* `nil`) - Whether the intent is a Smarthome-domain intent with valid device arguments.
  *   `tiebreakingMetadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantPfrTiebreakingMetadata.t`, *default:* `nil`) - 
  *   `smarthomeIntentMetadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantPfrSmartHomeIntentMetadata.t`, *default:* `nil`) - SmartHome intent metadata used for the SmartHome business-rules twiddler.
  *   `numConstraintsSatisfied` (*type:* `float()`, *default:* `nil`) - Sum of the number of constraints satisfied for each variable. Depending on the match score for a constraint, this number can be fractional and is in the range [0, num_constraints]. Populated by the Grounding Box.
  *   `isMediaControlIntent` (*type:* `boolean()`, *default:* `nil`) - Whether the intent is a media control intent.
  *   `isPodcastGenericIntent` (*type:* `boolean()`, *default:* `nil`) - Used for PFR manual rule to prefer high confidence podcast intent (e.g. topical, genre) over generic podcast intents.
  *   `maxHgrScoreAcrossBindingSets` (*type:* `float()`, *default:* `nil`) - The maximum score assigned by the Horizontal Grounding Ranker (HGR) across all of the intent's binding sets.
  *   `intentName` (*type:* `String.t`, *default:* `nil`) - intent_name is used by PFR ensemble model. See go/pfr_ha_launch_doc
  *   `kscorerRank` (*type:* `integer()`, *default:* `nil`) - The rank order of the interpretation as determined by kscorer. The kscorer-determined dominant interpretation, if any, gets a rank of 0. The remaining N interpretations get a rank of 1 through N.
  *   `isPlayGenericMusic` (*type:* `boolean()`, *default:* `nil`) - Whether the intent is a PlayGenericMusic-type intent.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fulfillableDominantMedia => boolean() | nil,
          :generatedByLegacyAquaDomain => boolean() | nil,
          :hasAnswerGroup => boolean() | nil,
          :subIntentType => String.t() | nil,
          :isIntentFromOrbit => boolean() | nil,
          :usesGroundingBox => boolean() | nil,
          :effectiveArgSpanLength => number() | nil,
          :phase => String.t() | nil,
          :isFullyGrounded => boolean() | nil,
          :isSageInNageIntent => boolean() | nil,
          :isSageDisabledIntent => boolean() | nil,
          :deepMediaDominant => boolean() | nil,
          :isVideoIntent => boolean() | nil,
          :parsingScoreMse8BucketId => integer() | nil,
          :predictedIntentConfidence => number() | nil,
          :nspIntentParseScore => float() | nil,
          :numConstraints => float() | nil,
          :isPodcastIntent => boolean() | nil,
          :isDummyIntent => boolean() | nil,
          :isScoreBasedIntent => boolean() | nil,
          :platinumSource => boolean() | nil,
          :nspRank => integer() | nil,
          :dominant => boolean() | nil,
          :isRadioIntent => boolean() | nil,
          :searchDispatch => String.t() | nil,
          :isHighConfidencePodcastIntent => boolean() | nil,
          :calibratedParsingScore => float() | nil,
          :intentNameAuisScoreExp => float() | nil,
          :inQueryMaxEffectiveArgSpanLength => number() | nil,
          :pq2tVsAssistantIbstCosine => float() | nil,
          :isTvmIntent => boolean() | nil,
          :numGroundedArgs => float() | nil,
          :numGroundableArgs => float() | nil,
          :intentType => String.t() | nil,
          :pq2tVsIbstCosine => float() | nil,
          :isNspIntent => boolean() | nil,
          :isSageIntent => boolean() | nil,
          :intentNameAuisScore => float() | nil,
          :kScore => number() | nil,
          :isAquaMediaIntent => boolean() | nil,
          :isValidSmarthomeIntent => boolean() | nil,
          :tiebreakingMetadata =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantPfrTiebreakingMetadata.t() | nil,
          :smarthomeIntentMetadata =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantPfrSmartHomeIntentMetadata.t() | nil,
          :numConstraintsSatisfied => float() | nil,
          :isMediaControlIntent => boolean() | nil,
          :isPodcastGenericIntent => boolean() | nil,
          :maxHgrScoreAcrossBindingSets => float() | nil,
          :intentName => String.t() | nil,
          :kscorerRank => integer() | nil,
          :isPlayGenericMusic => boolean() | nil
        }

  field(:fulfillableDominantMedia)
  field(:generatedByLegacyAquaDomain)
  field(:hasAnswerGroup)
  field(:subIntentType)
  field(:isIntentFromOrbit)
  field(:usesGroundingBox)
  field(:effectiveArgSpanLength)
  field(:phase)
  field(:isFullyGrounded)
  field(:isSageInNageIntent)
  field(:isSageDisabledIntent)
  field(:deepMediaDominant)
  field(:isVideoIntent)
  field(:parsingScoreMse8BucketId)
  field(:predictedIntentConfidence)
  field(:nspIntentParseScore)
  field(:numConstraints)
  field(:isPodcastIntent)
  field(:isDummyIntent)
  field(:isScoreBasedIntent)
  field(:platinumSource)
  field(:nspRank)
  field(:dominant)
  field(:isRadioIntent)
  field(:searchDispatch)
  field(:isHighConfidencePodcastIntent)
  field(:calibratedParsingScore)
  field(:intentNameAuisScoreExp)
  field(:inQueryMaxEffectiveArgSpanLength)
  field(:pq2tVsAssistantIbstCosine)
  field(:isTvmIntent)
  field(:numGroundedArgs)
  field(:numGroundableArgs)
  field(:intentType)
  field(:pq2tVsIbstCosine)
  field(:isNspIntent)
  field(:isSageIntent)
  field(:intentNameAuisScore)
  field(:kScore)
  field(:isAquaMediaIntent)
  field(:isValidSmarthomeIntent)

  field(:tiebreakingMetadata,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantPfrTiebreakingMetadata
  )

  field(:smarthomeIntentMetadata,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantPfrSmartHomeIntentMetadata
  )

  field(:numConstraintsSatisfied)
  field(:isMediaControlIntent)
  field(:isPodcastGenericIntent)
  field(:maxHgrScoreAcrossBindingSets)
  field(:intentName)
  field(:kscorerRank)
  field(:isPlayGenericMusic)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantPrefulfillmentRankerPrefulfillmentSignals do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantPrefulfillmentRankerPrefulfillmentSignals.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantPrefulfillmentRankerPrefulfillmentSignals do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

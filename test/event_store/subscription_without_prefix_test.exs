defmodule Commanded.EventStore.Adapters.Spear.SubscriptionWithoutPrefixTest do
  use Commanded.SpearTestCase, async: true

  @moduletag :to_fix
  @moduletag eventstore_config: [stream_prefix: nil]

  alias Commanded.EventStore.Adapters.Spear, as: SpearAdapter

  use Commanded.EventStore.Spear.SubscriptionTestCase, event_store: SpearAdapter

  defp event_store_wait(_default \\ nil), do: 5_000
end

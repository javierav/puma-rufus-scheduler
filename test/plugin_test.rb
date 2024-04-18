require "test_helper"

class PluginTest < Minitest::Test
  def test_plugin_version
    assert_equal "0.1.0", PumaRufusScheduler::VERSION
  end

  def test_plugin_registered
    refute_nil Puma::Plugins.find("rufus-scheduler")
  end
end

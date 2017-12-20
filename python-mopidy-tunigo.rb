class PythonMopidyTunigo < Formula
  desc "Mopidy extension for providing the browse feature of Spotify"
  homepage "https://github.com/trygveaa/mopidy-spotify-tunigo"
  url "https://pypi.python.org/packages/7f/fd/d4259db55060293898b74e7ab51e83f1fd5baf26768909bf8d5c94f4b8f3/Mopidy-Spotify-Tunigo-1.0.0.tar.gz"
  sha256 "ed14484efc80536eb40d909b7d1cc789fd1f9565045c8408b387b92df4789737"
  head "https://github.com/trygveaa/mopidy-spotify-tunigo"

  depends_on :python => :recommended
  depends_on :python3 => :optional
  depends_on "mopidy/mopidy/modipy-spotify"
  depends_on "kiendang/tunigo/python-tunigo"

  def install
    Language::Python.each_python(build) do |python, _version|
      system python, *Language::Python.setup_install_args(prefix)
    end
  end

  test do
    Language::Python.each_python(build) do |python, _version|
      system python, "-c", "import mopidy_spotify_tunigo"
    end
  end
end

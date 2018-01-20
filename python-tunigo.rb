class PythonTunigo < Formula
  desc "Python API for the browse feature of Spotify"
  homepage "https://github.com/trygveaa/python-tunigo"
  url "https://files.pythonhosted.org/packages/41/3b/f9e4f04d142c064e62bbf9568332d13cb54e1109071641cad8123d99b3fb/tunigo-1.0.0.tar.gz"
  sha256 "e2c90ee160fb59d48c553f8189a652d226229b64c091d235f675918dcc21b4a1"
  head "https://github.com/trygveaa/python-tunigo"

  depends_on "python" => :recommended
  depends_on "python3" => :optional
  depends_on "mopidy/mopidy/python-requests"

  def install
    Language::Python.each_python(build) do |python, _version|
      system python, *Language::Python.setup_install_args(prefix)
    end
  end

  test do
    Language::Python.each_python(build) do |python, _version|
      system python, "-c", "import tunigo"
    end
  end
end

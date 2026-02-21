class SimpleMemo < Formula
  include Language::Python::Virtualenv

  desc "A simple CLI for Apple Notes & Reminders on macOS"
  homepage "https://github.com/inkolin/simple-memo"
  url "https://files.pythonhosted.org/packages/a0/3e/5ac55cfcff89361726b68b0d89648a7cb96d42ffd3391685ff5200b1992a/simple_memo-0.2.0.tar.gz"
  sha256 "50b69e6df550e59fd85ceb3cb07448dd0f27ad6dea6ce80a3ba976f42e9c7b7b"
  license "MIT"

  depends_on "python@3.13"

  resource "click" do
    url "https://files.pythonhosted.org/packages/3d/fa/656b739db8587d7b5dfa22e22ed02566950fbfbcdc20311993483657a5c0/click-8.3.1.tar.gz"
    sha256 "12ff4785d337a1bb490bb7e9c2b1ee5da3112e94a8622f26a6c77f5d2fc6842a"
  end

  resource "mistune" do
    url "https://files.pythonhosted.org/packages/9d/55/d01f0c4b45ade6536c51170b9043db8b2ec6ddf4a35c7ea3f5f559ac935b/mistune-3.2.0.tar.gz"
    sha256 "708487c8a8cdd99c9d90eb3ed4c3ed961246ff78ac82f03418f5183ab70e398a"
  end

  resource "html2text" do
    url "https://files.pythonhosted.org/packages/f8/27/e158d86ba1e82967cc2f790b0cb02030d4a8bef58e0c79a8590e9678107f/html2text-2025.4.15.tar.gz"
    sha256 "948a645f8f0bc3abe7fd587019a2197a12436cd73d0d4908af95bfc8da337588"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "simple-memo", shell_output("#{bin}/simple-memo --version")
  end
end

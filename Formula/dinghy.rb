class Dinghy < Formula
  desc "faster, friendlier Docker on OS X"
  homepage "https://github.com/codekitchen/dinghy"
  url "https://github.com/codekitchen/dinghy.git", :tag => "v4.3.2", :revision => "f6448f9d5eee30564b54e17efd9e08fb39606bb5"
  head "https://github.com/codekitchen/dinghy.git", :branch => :master

  depends_on "unfs3"

  def install
    bin.install "bin/dinghy"
    bin.install "bin/_dinghy_command"
    prefix.install "cli"
  end

  def caveats; <<-EOS.undent
    Run `dinghy create` to create the VM, then `dinghy up` to bring up the VM and services.
    EOS
  end

  test do
    system "dinghy", "version"
  end
end

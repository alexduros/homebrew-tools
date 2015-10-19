require 'formula'

class Steel < Formula
  desc "Steel - Command line password manager"
  homepage "http://www.steelpasswordmanager.org/"
  url "https://gitlab.com/Rosvall/steel/repository/archive.tar.gz?ref=v0.9"
  version "0.9"
  sha256 "88b2799d949e7b83aef1aba29a0a3bed97f9eb5dd0d2c6c7da140c3aaf6a089a"

  depends_on "make" => :build

  def install
    system "make" # build steel binary and docs
    system "make", "install" # install steel binary an docs
  end

  def test
    system "steel -V"
  end

end

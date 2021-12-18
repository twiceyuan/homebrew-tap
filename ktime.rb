class Ktime < Formula
  desc "A time kit"
  homepage "https://github.com/twiceyuan/ktime"
  url "https://github.com/twiceyuan/ktime.git", :tag => '0.1.3'

  def install
    system "./gradlew installDist"
    bin.install Dir["build/install/ktime/bin/*"]
    lib.install Dir["build/install/ktime/lib/*"]
  end

  test do
    system "false"
  end
end

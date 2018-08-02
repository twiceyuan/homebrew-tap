class Ktime < Formula
  desc "A time kit"
  homepage "https://github.com/twiceyuan/ktime"
  head "https://github.com/twiceyuan/ktime.git"

  depends_on "cmake" => :build

  def install
    system "./gradlew installDist"
    bin.install Dir["build/install/ktime/bin/*"]
    lib.install Dir["build/install/ktime/lib/*"]
  end

  test do
    system "false"
  end
end

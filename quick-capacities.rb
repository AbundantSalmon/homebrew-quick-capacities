class QuickCapacities < Formula
  desc "CLI for quickly adding information to Capacities using its API"
  homepage "https://abundantsalmon.com"
  url "https://github.com/AbundantSalmon/QuickCapacities/releases/download/v0.0.11/qc.tar.gz"
  sha256 "fa6f9414a37dbf04c7c4132a93d6abfefc23cd22097e9a08643b92a462a9b322"

  livecheck do
    url "https://github.com/AbundantSalmon/QuickCapacities/releases/download/v0.0.11/qc.tar.gz"
    strategy :github_latest
  end

  def install
    bin.install "qc"
  end

  test do
    system "#{bin}/qc", "--help"
  end
end

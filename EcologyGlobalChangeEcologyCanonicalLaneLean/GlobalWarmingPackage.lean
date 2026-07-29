import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyGlobalChangeEcologyCanonicalLaneLean

structure GlobalWarmingPackage where
  globalTemperatureAnomaly : Float
  greenhouseGasConcentration : Float
  iceMassLoss : Float
  seaLevelRise : Float
  extremeWeatherEvents : Nat
  radiativeForcing : Float

structure GlobalWarmingEvidence (G : GlobalWarmingPackage) where
  globalTemperatureAnomalyClosed : G.globalTemperatureAnomaly > 1.0
  greenhouseGasConcentrationClosed : G.greenhouseGasConcentration > 350.0
  iceMassLossClosed : G.iceMassLoss > 200.0
  seaLevelRiseClosed : G.seaLevelRise > 0.0
  extremeWeatherEventsClosed : G.extremeWeatherEvents > 10
  radiativeForcingClosed : G.radiativeForcing > 1.0

def GlobalWarmingClosed (G : GlobalWarmingPackage) : Prop :=
  G.globalTemperatureAnomaly > 1.0 ∧ G.greenhouseGasConcentration > 350.0 ∧
  G.iceMassLoss > 200.0 ∧ G.seaLevelRise > 0.0 ∧
  G.extremeWeatherEvents > 10 ∧ G.radiativeForcing > 1.0

theorem global_warming_closed_from_evidence (G : GlobalWarmingPackage) (E : GlobalWarmingEvidence G) :
    GlobalWarmingClosed G := by
  exact And.intro E.globalTemperatureAnomalyClosed
    (And.intro E.greenhouseGasConcentrationClosed
      (And.intro E.iceMassLossClosed
        (And.intro E.seaLevelRiseClosed
          (And.intro E.extremeWeatherEventsClosed E.radiativeForcingClosed))))

end EcologyGlobalChangeEcologyCanonicalLaneLean
end HautevilleHouse
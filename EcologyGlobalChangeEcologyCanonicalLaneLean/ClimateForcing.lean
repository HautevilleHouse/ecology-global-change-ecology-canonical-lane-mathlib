import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyGlobalChangeEcologyCanonicalLaneLean

structure ClimateForcingPackage where
  radiativeForcing : Prop
  greenhouseGasConcentrations : Prop
  aerosolForcing : Prop
  landUseChange : Prop
  climateSensitivity : Prop

structure ClimateForcingEvidence (F : ClimateForcingPackage) where
  radiativeForcingClosed : F.radiativeForcing
  greenhouseGasConcentrationsClosed : F.greenhouseGasConcentrations
  aerosolForcingClosed : F.aerosolForcing
  landUseChangeClosed : F.landUseChange
  climateSensitivityClosed : F.climateSensitivity

def ClimateForcingClosed (F : ClimateForcingPackage) : Prop :=
  F.radiativeForcing ∧ F.greenhouseGasConcentrations ∧ F.aerosolForcing ∧
  F.landUseChange ∧ F.climateSensitivity

theorem climate_forcing_closed_from_evidence (F : ClimateForcingPackage)
    (E : ClimateForcingEvidence F) : ClimateForcingClosed F := by
  exact And.intro E.radiativeForcingClosed
    (And.intro E.greenhouseGasConcentrationsClosed
      (And.intro E.aerosolForcingClosed
        (And.intro E.landUseChangeClosed E.climateSensitivityClosed)))

end EcologyGlobalChangeEcologyCanonicalLaneLean
end HautevilleHouse
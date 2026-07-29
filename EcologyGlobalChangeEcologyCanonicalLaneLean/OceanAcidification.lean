import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyGlobalChangeEcologyCanonicalLaneLean

structure OceanAcidificationPackage where
  surfacePH : Float
  aragoniteSaturation : Float
  calcificationRate : Float
  coralBleachingFrequency : Nat
  planktonCommunityShift : Float

structure OceanAcidificationEvidence (O : OceanAcidificationPackage) where
  surfacePHClosed : O.surfacePH < 8.0
  aragoniteSaturationClosed : O.aragoniteSaturation < 2.0
  calcificationRateClosed : O.calcificationRate < 0.0
  coralBleachingFrequencyClosed : O.coralBleachingFrequency > 0
  planktonCommunityShiftClosed : O.planktonCommunityShift > 0.5

def OceanAcidificationClosed (O : OceanAcidificationPackage) : Prop :=
  O.surfacePH < 8.0 ∧ O.aragoniteSaturation < 2.0 ∧
  O.calcificationRate < 0.0 ∧ O.coralBleachingFrequency > 0 ∧
  O.planktonCommunityShift > 0.5

theorem ocean_acidification_closed_from_evidence (O : OceanAcidificationPackage) (E : OceanAcidificationEvidence O) :
    OceanAcidificationClosed O := by
  exact And.intro E.surfacePHClosed
    (And.intro E.aragoniteSaturationClosed
      (And.intro E.calcificationRateClosed
        (And.intro E.coralBleachingFrequencyClosed E.planktonCommunityShiftClosed)))

end EcologyGlobalChangeEcologyCanonicalLaneLean
end HautevilleHouse
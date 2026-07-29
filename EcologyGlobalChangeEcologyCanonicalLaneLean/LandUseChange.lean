import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyGlobalChangeEcologyCanonicalLaneLean

structure LandUseChangePackage where
  deforestationRates : Prop
  urbanization : Prop
  agriculturalIntensification : Prop
  soilDegradation : Prop
  landUseLegacy : Prop

structure LandUseChangeEvidence (L : LandUseChangePackage) where
  deforestationRatesClosed : L.deforestationRates
  urbanizationClosed : L.urbanization
  agriculturalIntensificationClosed : L.agriculturalIntensification
  soilDegradationClosed : L.soilDegradation
  landUseLegacyClosed : L.landUseLegacy

def LandUseChangeClosed (L : LandUseChangePackage) : Prop :=
  L.deforestationRates ∧ L.urbanization ∧ L.agriculturalIntensification ∧
  L.soilDegradation ∧ L.landUseLegacy

theorem land_use_change_closed_from_evidence (L : LandUseChangePackage)
    (E : LandUseChangeEvidence L) : LandUseChangeClosed L := by
  exact And.intro E.deforestationRatesClosed
    (And.intro E.urbanizationClosed
      (And.intro E.agriculturalIntensificationClosed
        (And.intro E.soilDegradationClosed E.landUseLegacyClosed)))

end EcologyGlobalChangeEcologyCanonicalLaneLean
end HautevilleHouse
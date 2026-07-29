import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyGlobalChangeEcologyCanonicalLaneLean

structure BiodiversityEcosystemServicePackage where
  speciesRichnessQuantified : Prop
  functionalDiversityAssessed : Prop
  ecosystemServiceProvisionModeled : Prop
  landUseChangeImpactIncluded : Prop
  climateChangeImpactIncluded : Prop

structure BiodiversityEcosystemServiceEvidence (B : BiodiversityEcosystemServicePackage) where
  speciesRichnessQuantifiedClosed : B.speciesRichnessQuantified
  functionalDiversityAssessedClosed : B.functionalDiversityAssessed
  ecosystemServiceProvisionModeledClosed : B.ecosystemServiceProvisionModeled
  landUseChangeImpactIncludedClosed : B.landUseChangeImpactIncluded
  climateChangeImpactIncludedClosed : B.climateChangeImpactIncluded

def BiodiversityEcosystemServiceClosed (B : BiodiversityEcosystemServicePackage) : Prop :=
  B.speciesRichnessQuantified ∧ B.functionalDiversityAssessed ∧
  B.ecosystemServiceProvisionModeled ∧ B.landUseChangeImpactIncluded ∧
  B.climateChangeImpactIncluded

theorem biodiversity_ecosystem_service_closed_from_evidence (B : BiodiversityEcosystemServicePackage)
    (Ev : BiodiversityEcosystemServiceEvidence B) : BiodiversityEcosystemServiceClosed B := by
  exact And.intro Ev.speciesRichnessQuantifiedClosed
    (And.intro Ev.functionalDiversityAssessedClosed
      (And.intro Ev.ecosystemServiceProvisionModeledClosed
        (And.intro Ev.landUseChangeImpactIncludedClosed Ev.climateChangeImpactIncludedClosed)))

end EcologyGlobalChangeEcologyCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyGlobalChangeEcologyCanonicalLaneLean

structure NetPrimaryProductivityPackage where
  ecosystemType : Type u
  nppValue : Float
  temporalResolution : Prop
  spatialExtent : Prop
  measurementMethod : Prop

structure NetPrimaryProductivityEvidence (N : NetPrimaryProductivityPackage) where
  nppValueClosed : N.nppValue > 0
  temporalResolutionClosed : N.temporalResolution
  spatialExtentClosed : N.spatialExtent
  measurementMethodClosed : N.measurementMethod

def NetPrimaryProductivityClosed (N : NetPrimaryProductivityPackage) : Prop :=
  N.nppValue > 0 ∧ N.temporalResolution ∧ N.spatialExtent ∧ N.measurementMethod

theorem net_primary_productivity_closed_from_evidence
    (N : NetPrimaryProductivityPackage) (E : NetPrimaryProductivityEvidence N) :
    NetPrimaryProductivityClosed N := by
  exact And.intro E.nppValueClosed
    (And.intro E.temporalResolutionClosed
      (And.intro E.spatialExtentClosed E.measurementMethodClosed))

end EcologyGlobalChangeEcologyCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyGlobalChangeEcologyCanonicalLaneLean

structure ClimateVegetationFeedbackPackage where
  climateVariable : Type u
  vegetationResponse : Type v
  feedbackDirection : Prop
  strength : Float
  spatialScale : Prop

structure ClimateVegetationFeedbackEvidence (C : ClimateVegetationFeedbackPackage) where
  feedbackDirectionClosed : C.feedbackDirection
  strengthClosed : C.strength > 0
  spatialScaleClosed : C.spatialScale

def ClimateVegetationFeedbackClosed (C : ClimateVegetationFeedbackPackage) : Prop :=
  C.feedbackDirection ∧ C.strength > 0 ∧ C.spatialScale

theorem climate_vegetation_feedback_closed_from_evidence
    (C : ClimateVegetationFeedbackPackage) (E : ClimateVegetationFeedbackEvidence C) :
    ClimateVegetationFeedbackClosed C := by
  exact And.intro E.feedbackDirectionClosed
    (And.intro E.strengthClosed E.spatialScaleClosed)

end EcologyGlobalChangeEcologyCanonicalLaneLean
end HautevilleHouse
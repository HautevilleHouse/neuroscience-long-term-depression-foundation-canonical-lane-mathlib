import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionFoundationCanonicalLaneLean

structure LTDInductionPackage where
  inductionStimulus : Prop
  calciumInflux : Prop
  phosphataseActivation : Prop
  receptorInternalization : Prop
  synapticScaling : Prop
  depressedStrength : Prop

structure LTDInductionEvidence (L : LTDInductionPackage) where
  inductionStimulusClosed : L.inductionStimulus
  calciumInfluxClosed : L.calciumInflux
  phosphataseActivationClosed : L.phosphataseActivation
  receptorInternalizationClosed : L.receptorInternalization
  synapticScalingClosed : L.synapticScaling
  depressedStrengthClosed : L.depressedStrength

def LTDInductionClosed (L : LTDInductionPackage) : Prop :=
  L.inductionStimulus ∧ L.calciumInflux ∧ L.phosphataseActivation ∧
  L.receptorInternalization ∧ L.synapticScaling ∧ L.depressedStrength

theorem ltd_induction_closed_from_evidence (L : LTDInductionPackage) (E : LTDInductionEvidence L) : LTDInductionClosed L := by
  exact And.intro E.inductionStimulusClosed (And.intro E.calciumInfluxClosed (And.intro E.phosphataseActivationClosed (And.intro E.receptorInternalizationClosed (And.intro E.synapticScalingClosed E.depressedStrengthClosed))))

end NeuroscienceLongTermDepressionFoundationCanonicalLaneLean
end HautevilleHouse
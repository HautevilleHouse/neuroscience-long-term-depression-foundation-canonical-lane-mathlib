import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionFoundationCanonicalLaneLean

structure HebbianPlasticityPackage where
  presynapticActivity : Prop
  postsynapticActivity : Prop
  spikeTiming : Prop
  weightChange : Prop
  longTermDepression : Prop
  presynapticActivityClosed : presynapticActivity
  postsynapticActivityClosed : postsynapticActivity
  spikeTimingClosed : spikeTiming
  weightChangeClosed : weightChange
  longTermDepressionClosed : longTermDepression

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  presynapticActivityClosed : H.presynapticActivity
  postsynapticActivityClosed : H.postsynapticActivity
  spikeTimingClosed : H.spikeTiming
  weightChangeClosed : H.weightChange
  longTermDepressionClosed : H.longTermDepression

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.presynapticActivity ∧ H.postsynapticActivity ∧ H.spikeTiming ∧ H.weightChange ∧ H.longTermDepression

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage)
    (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.presynapticActivityClosed
    (And.intro E.postsynapticActivityClosed
      (And.intro E.spikeTimingClosed
        (And.intro E.weightChangeClosed E.longTermDepressionClosed)))

end NeuroscienceLongTermDepressionFoundationCanonicalLaneLean
end HautevilleHouse
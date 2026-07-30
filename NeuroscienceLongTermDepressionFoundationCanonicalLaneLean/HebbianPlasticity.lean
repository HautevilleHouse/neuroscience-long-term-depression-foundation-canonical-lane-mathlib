import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionFoundationCanonicalLaneLean

structure HebbianPlasticityPackage where
  synapticWeight : Type u
  preSynapticActivity : Type v
  postSynapticActivity : Type w
  ltpMechanism : Prop
  ltdMechanism : Prop
  spikeTimingDependence : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  ltpMechanismClosed : H.ltpMechanism
  ltdMechanismClosed : H.ltdMechanism
  spikeTimingDependenceClosed : H.spikeTimingDependence

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.ltpMechanism ∧ H.ltdMechanism ∧ H.spikeTimingDependence

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.ltpMechanismClosed (And.intro E.ltdMechanismClosed E.spikeTimingDependenceClosed)

end NeuroscienceLongTermDepressionFoundationCanonicalLaneLean
end HautevilleHouse
class HotJobsmodel {
  String title;
  String description;

  String logo;

  HotJobsmodel(this.title, this.description, this.logo);
  static List<HotJobsmodel> gotjobslistvalur() {
    return [
      HotJobsmodel(
        'Facebook',
        'Creative Visualizer(3D Animator),\nDagital Media',
        'asset/icons/facebook.png',
      ),
      HotJobsmodel(
        'Google',
        'Creative Visualizer(3D Animator),\nDagital Media',
        'asset/icons/google.png',
      ),
      HotJobsmodel(
        'Microsoft',
        'Creative Visualizer(3D Animator),\nDagital Media',
        'asset/images/logo1.png',
      ),
      HotJobsmodel(
        'Linkedin',
        'Creative Visualizer(3D Animator),\nDagital Media',
        'asset/icons/linkedin.png',
      ),
      HotJobsmodel(
        'MindTree',
        'Creative Visualizer(3D Animator),\nDagital Media',
        'asset/images/logo1.png',
      ),
      HotJobsmodel(
        'Google',
        'Creative Visualizer(3D Animator),\nDagital Media',
        'asset/images/logo1.png',
      ),
      HotJobsmodel(
        'Microsoft',
        'Creative Visualizer(3D Animator),\nDagital Media',
        'asset/images/logo1.png',
      ),
      HotJobsmodel(
        'Microsoft',
        'Creative Visualizer(3D Animator),\nDagital Media',
        'asset/images/logo1.png',
      ),
    ];
  }
}

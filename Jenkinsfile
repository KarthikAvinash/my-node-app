pipeline {
agent any
tools {
nodejs &#39;NodeJS&#39; // Name of your NodeJS installation in Jenkins
}
stages {
stage(&#39;Checkout&#39;) {
steps {
// Checkout the code from GitHub
git url: &#39;https://github.com/your-repo/your-project.git&#39;,
branch: &#39;main&#39;
}
}
stage(&#39;Install Dependencies&#39;) {
steps {
// Install Node.js dependencies
sh &#39;npm install&#39;
}
}
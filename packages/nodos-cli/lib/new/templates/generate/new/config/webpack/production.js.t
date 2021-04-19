---
to: "<%= without.includes('webpack') ? null : `./${name}/config/webpack/production.js` %>"
---
import TerserPlugin from 'terser-webpack-plugin';
import { merge } from 'webpack-merge';
import common from './common.js';

export default merge(common, {
  mode: 'production',
  optimization: {
    minimize: true,
    minimizer: [new TerserPlugin()],
  }
});

# react copの既存の機能
- [ ] 


```javascript
// レイヤーパラム
const [getInputRegExp, setInputRegExp] = useLayerParams(undefined, ["Float", "Integer"]);
setInputRegExp(/^(\+|-)?[0-9]+(\.[0-9]*)?$/, "Float"); // Floatレイヤーに対して正規表現をセット
getInputRegExp()
```

```javascript
// レイヤーの活性化・非活性化
const layerManager = useLayerManager();
const layerState = layerManager.getLayerState();
layerManager.activateLayer("Float");
layerManager.deactivateLayer("Integer");

// レイヤーの活性化・非活性化の状態を取得
layerState.Float
layerState.Integer

// レイヤーがactiveかどうかを判定
layerManager.isActiveLayer("Float")
```

```javascript
// レイヤーがアクティブの時だけ実行するuseEffect
useEffectWithLayer
```

```javascript
// Layerの状態に応じて、コンポーネントを表示するかどうかを切り替える
Layer
```

        
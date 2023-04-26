import { Row } from 'view-ui-plus';

<template>
    <Row style="background:#eee;padding:20px">
            <Card :bordered="false">
                <template #title>Borderless card</template>
                <p>Content of card</p>
                <p>Content of card</p>
                <p>Content of card</p>
            </Card>
            <Card shadow>
                <template #title>Use a card with a shadow effect</template>
                <p>Content of card</p>
                <p>Content of card</p>
                <p>Content of card</p>
            </Card>
            <Space wrap>
        <template v-for="(url, index) in urlList" :key="url">
            <Image :src="url" fit="contain" width="200px" height="80px" preview :preview-list="urlList"
                :initial-index="index" />
            <h3>换季时节如何应对过敏性鼻炎</h3>
            <p>过敏性鼻炎又称“变应性鼻炎”，是指特应性体质人群吸入花粉、虫螨等变应原后，机体T、B、肥大细胞等功能紊乱，细胞因子失衡所引发的鼻黏膜非感染性炎性疾病。过敏性鼻炎是最为常见的过敏性疾病之一，影响着各年龄阶段的人群。
            </p>
        </template>
    </Space>
    </Row>
</template>
<script>
export default {
    components: {
    },
    data() {
        return {
            urlList: [
                'https://file.iviewui.com/images/image-demo-1.jpg',
                'https://file.iviewui.com/images/image-demo-2.jpg',
                'https://file.iviewui.com/images/image-demo-3.jpg',
                'https://file.iviewui.com/images/image-demo-4.jpg',
                'https://file.iviewui.com/images/image-demo-5.jpg',
                'https://file.iviewui.com/images/image-demo-6.jpg',
            ]
        }
    }
}
</script>
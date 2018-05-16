(function (D) {
    var O = function (F, G) {
        return (F << G) | (F >>> (32 - G))
    };
    var Q = function (U, S) {
        var I, G, F, H, T;
        F = (U & 2147483648);
        H = (S & 2147483648);
        I = (U & 1073741824);
        G = (S & 1073741824);
        T = (U & 1073741823) + (S & 1073741823);
        if (I & G) {
            return (T ^ 2147483648 ^ F ^ H)
        }
        if (I | G) {
            if (T & 1073741824) {
                return (T ^ 3221225472 ^ F ^ H)
            } else {
                return (T ^ 1073741824 ^ F ^ H)
            }
        } else {
            return (T ^ F ^ H)
        }
    };
    var B = function (F, G, H) {
        return (F & G) | ((~F) & H)
    };
    var C = function (F, G, H) {
        return (F & H) | (G & (~H))
    };
    var L = function (F, G, H) {
        return (F ^ G ^ H)
    };
    var M = function (F, G, H) {
        return (G ^ (F | (~H)))
    };
    var K = function (H, I, S, T, F, U, G) {
        H = Q(H, Q(Q(B(I, S, T), F), G));
        return Q(O(H, U), I)
    };
    var R = function (H, I, S, T, F, U, G) {
        H = Q(H, Q(Q(C(I, S, T), F), G));
        return Q(O(H, U), I)
    };
    var E = function (H, I, S, T, F, U, G) {
        H = Q(H, Q(Q(L(I, S, T), F), G));
        return Q(O(H, U), I)
    };
    var P = function (H, I, S, T, F, U, G) {
        H = Q(H, Q(Q(M(I, S, T), F), G));
        return Q(O(H, U), I)
    };
    var N = function (W) {
        var I;
        var T = W.length;
        var G = T + 8;
        var U = (G - (G % 64)) / 64;
        var F = (U + 1) * 16;
        var S = Array(F - 1);
        var V = 0;
        var H = 0;
        while (H < T) {
            I = (H - (H % 4)) / 4;
            V = (H % 4) * 8;
            S[I] = (S[I] | (W.charCodeAt(H) << V));
            H++
        }
        I = (H - (H % 4)) / 4;
        V = (H % 4) * 8;
        S[I] = S[I] | (128 << V);
        S[F - 2] = T << 3;
        S[F - 1] = T >>> 29;
        return S
    };
    var A = function (H) {
        var G = "", I = "", F, S;
        for (S = 0; S <= 3; S++) {
            F = (H >>> (S * 8)) & 255;
            I = "0" + F.toString(16);
            G = G + I.substr(I.length - 2, 2)
        }
        return G
    };
    var J = function (H) {
        H = H.replace(/\x0d\x0a/g, "\x0a");
        var G = "";
        for (var F = 0; F < H.length; F++) {
            var I = H.charCodeAt(F);
            if (I < 128) {
                G += String.fromCharCode(I)
            } else {
                if ((I > 127) && (I < 2048)) {
                    G += String.fromCharCode((I >> 6) | 192);
                    G += String.fromCharCode((I & 63) | 128)
                } else {
                    G += String.fromCharCode((I >> 12) | 224);
                    G += String.fromCharCode(((I >> 6) & 63) | 128);
                    G += String.fromCharCode((I & 63) | 128)
                }
            }
        }
        return G
    };
    D.extend({
        md5: function (t) {
            var u = Array();
            var V, n, H, p, s, e, f, m, h;
            var G = 7, g = 12, Y = 17, F = 22;
            var i = 5, X = 9, r = 14, T = 20;
            var Z = 4, U = 11, I = 16, q = 23;
            var W = 6, S = 10, j = 15, o = 21;
            t = J(t);
            u = N(t);
            e = 1732584193;
            f = 4023233417;
            m = 2562383102;
            h = 271733878;
            for (V = 0; V < u.length; V += 16) {
                n = e;
                H = f;
                p = m;
                s = h;
                e = K(e, f, m, h, u[V + 0], G, 3614090360);
                h = K(h, e, f, m, u[V + 1], g, 3905402710);
                m = K(m, h, e, f, u[V + 2], Y, 606105819);
                f = K(f, m, h, e, u[V + 3], F, 3250441966);
                e = K(e, f, m, h, u[V + 4], G, 4118548399);
                h = K(h, e, f, m, u[V + 5], g, 1200080426);
                m = K(m, h, e, f, u[V + 6], Y, 2821735955);
                f = K(f, m, h, e, u[V + 7], F, 4249261313);
                e = K(e, f, m, h, u[V + 8], G, 1770035416);
                h = K(h, e, f, m, u[V + 9], g, 2336552879);
                m = K(m, h, e, f, u[V + 10], Y, 4294925233);
                f = K(f, m, h, e, u[V + 11], F, 2304563134);
                e = K(e, f, m, h, u[V + 12], G, 1804603682);
                h = K(h, e, f, m, u[V + 13], g, 4254626195);
                m = K(m, h, e, f, u[V + 14], Y, 2792965006);
                f = K(f, m, h, e, u[V + 15], F, 1236535329);
                e = R(e, f, m, h, u[V + 1], i, 4129170786);
                h = R(h, e, f, m, u[V + 6], X, 3225465664);
                m = R(m, h, e, f, u[V + 11], r, 643717713);
                f = R(f, m, h, e, u[V + 0], T, 3921069994);
                e = R(e, f, m, h, u[V + 5], i, 3593408605);
                h = R(h, e, f, m, u[V + 10], X, 38016083);
                m = R(m, h, e, f, u[V + 15], r, 3634488961);
                f = R(f, m, h, e, u[V + 4], T, 3889429448);
                e = R(e, f, m, h, u[V + 9], i, 568446438);
                h = R(h, e, f, m, u[V + 14], X, 3275163606);
                m = R(m, h, e, f, u[V + 3], r, 4107603335);
                f = R(f, m, h, e, u[V + 8], T, 1163531501);
                e = R(e, f, m, h, u[V + 13], i, 2850285829);
                h = R(h, e, f, m, u[V + 2], X, 4243563512);
                m = R(m, h, e, f, u[V + 7], r, 1735328473);
                f = R(f, m, h, e, u[V + 12], T, 2368359562);
                e = E(e, f, m, h, u[V + 5], Z, 4294588738);
                h = E(h, e, f, m, u[V + 8], U, 2272392833);
                m = E(m, h, e, f, u[V + 11], I, 1839030562);
                f = E(f, m, h, e, u[V + 14], q, 4259657740);
                e = E(e, f, m, h, u[V + 1], Z, 2763975236);
                h = E(h, e, f, m, u[V + 4], U, 1272893353);
                m = E(m, h, e, f, u[V + 7], I, 4139469664);
                f = E(f, m, h, e, u[V + 10], q, 3200236656);
                e = E(e, f, m, h, u[V + 13], Z, 681279174);
                h = E(h, e, f, m, u[V + 0], U, 3936430074);
                m = E(m, h, e, f, u[V + 3], I, 3572445317);
                f = E(f, m, h, e, u[V + 6], q, 76029189);
                e = E(e, f, m, h, u[V + 9], Z, 3654602809);
                h = E(h, e, f, m, u[V + 12], U, 3873151461);
                m = E(m, h, e, f, u[V + 15], I, 530742520);
                f = E(f, m, h, e, u[V + 2], q, 3299628645);
                e = P(e, f, m, h, u[V + 0], W, 4096336452);
                h = P(h, e, f, m, u[V + 7], S, 1126891415);
                m = P(m, h, e, f, u[V + 14], j, 2878612391);
                f = P(f, m, h, e, u[V + 5], o, 4237533241);
                e = P(e, f, m, h, u[V + 12], W, 1700485571);
                h = P(h, e, f, m, u[V + 3], S, 2399980690);
                m = P(m, h, e, f, u[V + 10], j, 4293915773);
                f = P(f, m, h, e, u[V + 1], o, 2240044497);
                e = P(e, f, m, h, u[V + 8], W, 1873313359);
                h = P(h, e, f, m, u[V + 15], S, 4264355552);
                m = P(m, h, e, f, u[V + 6], j, 2734768916);
                f = P(f, m, h, e, u[V + 13], o, 1309151649);
                e = P(e, f, m, h, u[V + 4], W, 4149444226);
                h = P(h, e, f, m, u[V + 11], S, 3174756917);
                m = P(m, h, e, f, u[V + 2], j, 718787259);
                f = P(f, m, h, e, u[V + 9], o, 3951481745);
                e = Q(e, n);
                f = Q(f, H);
                m = Q(m, p);
                h = Q(h, s)
            }
            var l = A(e) + A(f) + A(m) + A(h);
            return l.toLowerCase()
        }
    })
})(jQuery);
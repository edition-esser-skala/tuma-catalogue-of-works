\version "2.24.2"
\include "header.ly"

Alto = {
  \relative c' {
    \clef alto
    \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "Tempo giusto"
    g'4^\solo d8 b' a4 g8 fis
    g16[ fis] g8 r4 r g8 g
    g f16[ es] f8 f f es r4
    r c8 f d16[ c] d8 es4~
    es8 d c4 b r
  }
}

AltoLyrics = \lyricmode {
  A -- ve Re -- gi -- na coe --
  lo -- rum, sal -- ve
  ra -- dix, sal -- ve por -- ta
  ex qua mun -- do lux __
  est or -- ta.
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "Tempo giusto"
    R1
    d4^\solo g,8 es'4 es16 d d8 cis
    d16[ cis] d8 r4 r g,8 c
    a16[ g] a8 c4~ c8 b16[ a] g4
    a8 b4 a8 b4 b16[ d] c[ b]
  }
}

TenoreLyrics = \lyricmode {
  A -- ve Do -- mi -- na An -- ge --
  lo -- rum, ex qua
  mun -- do lux __ est or --
  _ _ _ ta. Gau -- de
}

Organo = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \tempoMarkup "Tempo giusto"
    g8-\solo a b g c a d d,
    g' a b g fis g es4
    d4. g8 c,4 es
    f! a, b c8 es
    f b, f4 b4. b8
  }
}

BassFigures = \figuremode {
  r2 <6>4 <4>8 <_+>
  r4. <6>8 <7> <6> <7> <6\\>
  <4> <3>4 <_!>8 <4> <3> <6>4
  r2 <9>8 <8>4.
  <7>4 <4>8 <3> r2
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics
    >>
    \new Staff {
      \set Staff.instrumentName = \markup \center-column { "org" "fag" "b" }
      \Organo
    }
    \new FiguredBass { \BassFigures }
  >>
}

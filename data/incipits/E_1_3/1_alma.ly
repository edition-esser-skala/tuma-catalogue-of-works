\version "2.24.2"
\include "header.ly"

Alto = {
  \relative c' {
    \clef alto
    \key g \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    d4^\aTre g, es'8[ d] es[ c]
    d g, g'4. fis16[ e] \hA fis4
    g r r2
    r4 r8 e f! g a g16[ a]
    b8[ a] g4. f8 e4
    d r r8 f fis g16 a
  }
}

AltoLyrics = \lyricmode {
  Al -- ma Re -- dem --
  pto -- ris Ma -- _ _
  ter,
  et stel -- la, stel -- la
  ma -- _ _ _
  ris: Suc -- cur -- re, "suc -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    R1
    r2 r4 a^\aTre
    b8[ a] b g a d, d' d
    d4 cis d r8 d
    d c h e16[ d] cis8 d4 \hA cis8
    d4 r r8 a a b16 c
  }
}

TenoreLyrics = \lyricmode {
  quae
  per -- vi -- a coe -- li por -- ta
  ma -- _ nes et
  stel -- la, stel -- la ma -- _ _
  ris: Suc -- cur -- re, "suc -"
}

Basso = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    R1*2
    r4 d^\aTre f!8[ e] f d
    e a, a' g f4 d
    r2 r4 r8 a'
    a f16 a d[ a f a] d,8 d r d
  }
}

BassoLyrics = \lyricmode {
  quae per -- vi -- a %3
  coe -- li por -- ta ma -- nes
  Suc --
  cur -- re ca -- den -- _ ti, "suc -"
}

Organo = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \tempoMarkup "[no tempo]"
    g8-\solo-\aTre a b g c4. a8
    b4. c8 d4 d,
    g2 d'
    a d
    g, a
    d4 d'16 a f a d,4 r
  }
}

BassFigures = \figuremode {
  r1
  r2 <4>4 <_+>
  r1
  <5 4>4 <\t _+>2.
  <5 _->4 <\t _!>8 <6! \t> <7 _+> <6 4> <5 \t> <\t _+>
  r1
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

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}

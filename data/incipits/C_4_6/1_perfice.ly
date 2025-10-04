\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "Largo"
    r8 a'-! c-! e-! a( gis a) e-!
    f( e f) d-! e( d e) c-!
    d( c d) h-! c a16. h32 h4\trill
    a8 c e a r c,-! a'( e)
    d16 f d c h e, e' d c8 a-! c-! e-!
    a( gis a) e-! f( e) f( e)
    dis4. dis8 dis-! h-! \hA dis-! fis-!
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "Largo"
    r2 r8 e c'8. h16
    a4. h8 gis4. a8
    fis4. gis8 a f d e
    c4 r8 a' c a r c
    h4 e, e8 r r gis
    c h a gis c4. c16 a
    fis4. fis8 fis4 r8 a
  }
}

Viola = {
  \relative c' {
    \clef alto
    \key a \minor \time 4/4 \tempoMarkup "Largo"
    a4 r r2
    R1*2
    a8 a' a a a a a a
    a a gis gis a4 r
    r2 c,
    h4. h8 h4 r
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key a \minor \time 4/4 \tempoMarkup "Largo" \autoBeamOff
    R1*3
    e'4^\tutti e8 e c4 c
    h2 a4 r
    r2 r8 e' f[ e]
    dis4. dis8 dis4 r
  }
}

SopranoLyrics = \lyricmode {
  Per -- fi -- ce gres -- sus %4
  me -- os
  in se --
  _ mi -- tis,
}

Alto = {
  \relative c' {
    \clef alto
    \key a \minor \time 4/4 \tempoMarkup "Largo" \autoBeamOff
    R1*3
    a'4^\tutti a8 a a4 a
    h e, e r
    r2 r4 a
    fis4. fis8 fis4 r
  }
}

AltoLyrics = \lyricmode {
  Per -- fi -- ce gres -- sus
  me -- _ os
  in
  se -- mi -- tis,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key a \minor \time 4/4 \tempoMarkup "Largo" \autoBeamOff
    R1*3
    c4^\tutti c8 c e4 e
    d2 c4 r
    r2 c
    h4. h8 h4 r
  }
}

TenoreLyrics = \lyricmode {
  Per -- fi -- ce gres -- sus
  me -- os
  in
  se -- mi -- tis,
}

Basso = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "Largo" \autoBeamOff
    R1*3
    a'4^\tutti a8 a a4 a
    a gis a r
    r2 a
    a4. a8 a4 r
  }
}

BassoLyrics = \lyricmode {
  Per -- fi -- ce gres -- sus
  me -- _ os
  in
  se -- mi -- tis,
}

Organo = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "Largo"
    a4-\solo r r2
    R1*2
    a'8-\tutti a a a a a a a
    a a gis gis a4 r
    r2 a
    a4. a8 a4 r
  }
}

BassFigures = \figuremode {
  r1*4
  <4 2>4 <6 5>2.
  r2 <5>4 <6>8 <5>
  <4\+ 2>1
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
      \new Staff {
        \set Staff.instrumentName = "vla"
        \Viola
      }
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

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
